--
-- User: Glastis
-- Date: 25/11/2017
-- Time: 03:06
--

local stat = require('common.stats')
local constant = require('common.constants')
local utilitie = require('common.utilities')

-- DATABASE
local MongoClient = require("mongorover.MongoClient")
local db_client = MongoClient.new(constant.DATABASE_ADDRESS)
local db_database = db_client:getDatabase(constant.DATABASE_NAME)

local views = {}

local function get_stats_view_artists()
    local result
    local view
    local stats_view
    local facebook
    local youtube
    local twitter
    local soundcloud
    local collection
    local search
    local search_user

    collection = {}
    collection[constant.COLLECTION_ARTIST] = db_database:getCollection(constant.COLLECTION_ARTIST)

    stats_view = {}
    view = {}
    facebook = {}
    youtube = {}
    twitter = {}
    soundcloud = {}
    search = {}

    search[constant.FIELD_ARTIST_ID] = 0
    result = collection[constant.COLLECTION_ARTIST]:find_one(search)
    while true do
        result = collection[constant.COLLECTION_ARTIST]:find_one(search)
        if not result then
            view.facebook = stat.median(facebook)
            view.youtube = stat.median(youtube)
            view.twitter = stat.median(twitter)
            view.soundcloud = stat.median(soundcloud)
            stats_view.median = view
            view = {}
            view.facebook = stat.average(facebook)
            view.youtube = stat.average(youtube)
            view.twitter = stat.average(twitter)
            view.soundcloud = stat.average(soundcloud)
            stats_view.average = view
            return stats_view
        end
        if result[constant.FIELD_ARTIST_VIEW_YOUTUBE] then
            youtube[#youtube + 1] = result[constant.FIELD_ARTIST_VIEW_YOUTUBE]
        end
        if result[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD] then
            soundcloud[#soundcloud + 1] = result[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]
        end
        if result[constant.FIELD_ARTIST_VIEW_FACEBOOK] then
            facebook[#facebook + 1] = result[constant.FIELD_ARTIST_VIEW_FACEBOOK]
        end
        if result[constant.FIELD_ARTIST_VIEW_YOUTUBE] then
            twitter[#twitter + 1] = result[constant.FIELD_ARTIST_VIEW_YOUTUBE]
        end
        search[constant.FIELD_ARTIST_ID] = search[constant.FIELD_ARTIST_ID] + 1
    end
    return false
end
views.get_stats_view_artists = get_stats_view_artists

local function get_score_stat_med(median, actual)
    if actual < median.tiers_1 then
        return 0
    end
    if actual < median.tiers_2 then
        return constant.MEDIAN_TIERS_1_GAIN
    end
    if actual < median.tiers_3 then
        return constant.MEDIAN_TIERS_2_GAIN
    end
    return constant.MEDIAN_TIERS_3_GAIN
end
views.get_score_stat_med = get_score_stat_med

local function get_score_stat_ave(average, actual)
    local delta

    delta = actual / average
    if delta < constant.AVERAGE_TIERS_1 then
        return 0
    end
    if delta < constant.AVERAGE_TIERS_2 then
        return constant.AVERAGE_TIERS_1_GAIN
    end
    if delta < constant.AVERAGE_TIERS_3 then
        return constant.AVERAGE_TIERS_2_GAIN
    end
    return constant.AVERAGE_TIERS_3_GAIN
end
views.get_score_stat_ave = get_score_stat_ave

local function get_score_stat(stat_view, artist)
    local score

    score = 0
    score = get_score_stat_med(stat_view.median.facebook, artist[constant.FIELD_ARTIST_VIEW_FACEBOOK]) + score
    score = get_score_stat_med(stat_view.median.twitter, artist[constant.FIELD_ARTIST_VIEW_TWITTER]) + score
    score = get_score_stat_med(stat_view.median.youtube, artist[constant.FIELD_ARTIST_VIEW_YOUTUBE]) + score
    score = get_score_stat_med(stat_view.median.soundcloud, artist[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]) + score
    score = get_score_stat_ave(stat_view.average.facebook, artist[constant.FIELD_ARTIST_VIEW_FACEBOOK]) + score
    score = get_score_stat_ave(stat_view.average.twitter, artist[constant.FIELD_ARTIST_VIEW_TWITTER]) + score
    score = get_score_stat_ave(stat_view.average.youtube, artist[constant.FIELD_ARTIST_VIEW_YOUTUBE]) + score
    score = get_score_stat_ave(stat_view.average.soundcloud, artist[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]) + score
    return score
end
views.get_score_stat = get_score_stat

return views