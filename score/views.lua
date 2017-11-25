--
-- User: Glastis
-- Date: 25/11/2017
-- Time: 03:06
--

local stat = require('../stats')
local db = require('database')
local utilitie = require('utilities')
local constant = require('constants')

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

    collection = db.get_collection(constant.COLLECTION_ARTIST)
    stats_view = {}
    view = {}
    facebook = {}
    youtube = {}
    twitter = {}
    soundcloud = {}
    id = 1
    result = collection:find_one({_id = id})
    while result do
        result = collection:find_one({_id = id})
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
        facebook[#facebook + 1] = result.view_facebook
        youtube[#youtube + 1] = result.view_youtube
        twitter[#twitter + 1] = result.view_twitter
        soundcloud[#soundcloud + 1] = result.view_soundcloud
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

local function get_score_stat(stat_view, artist)
    local score

    score = get_score_stat_med(stat_view.median.facebook, artist.view_facebook)
    score = get_score_stat_med(stat_view.median.youtube, artist.view_youtube) + score
    score = get_score_stat_med(stat_view.median.twitter, artist.view_twitter) + score
    score = get_score_stat_med(stat_view.median.soundcloud, artist.view_soundcloud) + score
    score = get_score_stat_ave(stat_view.average.facebook, artist.view_facebook) + score
    score = get_score_stat_ave(stat_view.average.youtube, artist.view_youtube) + score
    score = get_score_stat_ave(stat_view.average.twitter, artist.view_twitter) + score
    score = get_score_stat_ave(stat_view.average.soundcloud, artist.view_soundcloud) + score
    return score
end
views.get_score_stat = get_score_stat

return views