--
-- User: Glastis
-- Date: 25/11/2017
-- Time: 03:06
--

local stat = require('common.stats')
local db = require('common.database')
local utilitie = require('common.utilities')
local constant = require('common.constants')
local data_input = require('bandy.data_input')

local views = {}

local function get_stats_view_artists()
    local id
    local result
    local view
    local stats_view
    local facebook
    local youtube
    local twitter
    local soundcloud
    local collection
    local search

    collection = {}
    collection[constant.COLLECTION_ARTIST] = db.get_collection(constant.COLLECTION_ARTIST)
    collection[constant.COLLECTION_USER] = db.get_collection(constant.COLLECTION_USER)
    stats_view = {}
    view = {}
    facebook = {}
    youtube = {}
    twitter = {}
    soundcloud = {}
    search = {}
    id = 1

    search[constant.FIELD_ARTIST_ID] = id
    result = collection[constant.COLLECTION_ARTIST]:find_one(search)
    while result do
        search[constant.FIELD_ARTIST_ID] = id
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
        twitter[#twitter + 1] = result[constant.FIELD_ARTIST_VIEW_YOUTUBE]
        soundcloud[#soundcloud + 1] = result[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]
        result = data_input.get_user_from_artist(result, collection[constant.COLLECTION_USER])
        if result then
            facebook[#facebook + 1] = result[constant.FIELD_USER_VIEW_FACEBOOK]
            youtube[#youtube + 1] = result[constant.FIELD_USER_VIEW_TWITTER]
        else
            print('ERROR: user not found for artist ' .. tostring(id))
        end
        print('artist ' .. id .. ' done')
        id = id + 1
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

local function get_score_stat(stat_view, artist, user)
    local score

    score = get_score_stat_med(stat_view.median.facebook, user[constant.FIELD_USER_VIEW_FACEBOOK])
    score = get_score_stat_med(stat_view.median.twitter, user[constant.FIELD_USER_VIEW_TWITTER]) + score
    score = get_score_stat_med(stat_view.median.youtube, artist[constant.FIELD_ARTIST_VIEW_YOUTUBE]) + score
    score = get_score_stat_med(stat_view.median.soundcloud, artist[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]) + score
    score = get_score_stat_ave(stat_view.average.facebook, user[constant.FIELD_USER_VIEW_FACEBOOK]) + score
    score = get_score_stat_ave(stat_view.average.twitter, user[constant.FIELD_USER_VIEW_TWITTER]) + score
    score = get_score_stat_ave(stat_view.average.youtube, artist[constant.FIELD_ARTIST_VIEW_YOUTUBE]) + score
    score = get_score_stat_ave(stat_view.average.soundcloud, artist[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD]) + score
    return score
end
views.get_score_stat = get_score_stat

return views