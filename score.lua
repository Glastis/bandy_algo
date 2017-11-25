--
-- User: Luciano
-- Date: 11/11/2017
-- Time: 19:10
--

local db = require('database')
local constant = require('constants')
local stat = require('stats')

-- CONSTANTS
local COLLECTION_ARTIST = constant.COLLECTION_ARTIST
local COLLECTION_LABEL = constant.COLLECTION_LABEL

function get_stats_view_artists()
    local id
    local result
    local view
    local stats_view
    local facebook
    local youtube
    local twitter
    local soundcloud
    local collection

    collection = db.get_collection(COLLECTION_ARTIST)
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

function get_score_stat_med(median, actual)
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

function get_score_stat_ave(average, actual)
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

function get_score_stat(stat_view, artist)
    local score

    score = get_score_stat_med(stat_view.facebook.median, artist.view_facebook)
    score = get_score_stat_med(stat_view.youtube.median, artist.view_facebook) + score
    score = get_score_stat_med(stat_view.twitter.median, artist.view_facebook) + score
    score = get_score_stat_med(stat_view.soundcloud.median, artist.view_facebook) + score
    score = get_score_stat_ave(stat_view.facebook.average, artist.view_facebook) + score
    score = get_score_stat_ave(stat_view.youtube.average, artist.view_facebook) + score
    score = get_score_stat_ave(stat_view.twitter.average, artist.view_facebook) + score
    score = get_score_stat_ave(stat_view.soundcloud.average, artist.view_facebook) + score
    return score
end

function score_artist(stat_view, artist, label)
    local score

    score = get_score_stat(stat_view, artist)
    -- add here other scores
    return score
end

function score_all_artists(stat_view, label)
    local id
    local collection
    local retval
    local result

    id = 1
    retval = {}
    collection = db.get_collection(COLLECTION_ARTIST)
    result = collection:find_one({_id = id})
    while collection do
        retval[#retval + 1].id = id
        retval[#retval + 1].score = score_artist(stat_view, result, label)
        id = id + 1
        collection = db.get_collection(COLLECTION_ARTIST)
    end
end

function score_label(stat_view)
    local collection
    local id
    local result
    local artist_score

    id = 1
    collection = db.get_collection(COLLECTION_LABEL)
    result = collection:find_one({_id = id})
    while result do
        artist_score = score_all_artist(stat_view, result)
        collection:update_one({_id = id}, {["$set"] = {artist_score = artist_score}})
        id = id + 1
        result = collection:find_one({_id = id})
    end
    return true
end

function score_core()
    local stat_view

    stat_view = get_stats_view_artists()
    score_label(stat_view)
end