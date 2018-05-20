--
-- User: Glastis
-- Date: 11/11/2017
-- Time: 18:59
--

local db = require('common.database')
local constant = require('common.constants')
local utilitie = require('common.utilities')

-- DIFFERENTS SCORES SCRIPTS
local view = require('score.views')
local genre = require('score.genres')

-- CONSTANTS
local genre_tree
genre_tree = genre.get_genres()

function score_artist(stat_view, artist, label)
    local score

    score = view.get_score_stat(stat_view, artist)
    score = genre.get_score_genre(genre_tree, artist.genre, label.searched_genre) + score
    -- add here other scores
--    utilitie.var_dump(label, true)
--    utilitie.var_dump(artist, true)
    return score
end

function score_all_artists(stat_view, label)
    local id
    local collection
    local retval
    local result

    id = 1
    retval = {}
    collection = db.get_collection(constant.COLLECTION_ARTIST)
    result = collection:find_one({_id = id})
    while result do
        retval[#retval + 1] = {}
        retval[#retval]._id = id
        retval[#retval].score = score_artist(stat_view, result, label)
        id = id + 1
        result = collection:find_one({_id = id})
    end
    return retval
end

function score_label(stat_view)
    local collection
    local id
    local result
    local artist_score

    id = 1
    collection = db.get_collection(constant.COLLECTION_LABEL)
    result = collection:find_one({_id = id})
    while result do
        artist_score = score_all_artists(stat_view, result)
--        utilitie.var_dump(artist_score, true) -- debug/dev stuff, should be commented in prod
        collection:update_one({_id = id}, {["$set"] = {artist_score = artist_score}})
        print('Label: ' .. tostring(result.name) .. ' done')
        id = id + 1
        result = collection:find_one({_id = id})
    end
    return true
end

function score_core()
    local stat_view

    stat_view = view.get_stats_view_artists()
    score_label(stat_view)
end

function core()
    print('Score calc begin')
    score_core()
    print('Score calc done')
end

core()