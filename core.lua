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
    score = genre.get_score_genre(genre_tree, artist[constant.FIELD_ARTIST_GENRE], label[constant.FIELD_LABEL_GENRE]) + score
    -- add here other scores
--    utilitie.var_dump(label, true)
--    utilitie.var_dump(artist, true)
    return score
end

function score_all_artists(stat_view, label)
    local collection
    local retval
    local result
    local search

    retval = {}
    search = {}
    search[constant.FIELD_ARTIST_ID] = 1
    collection = db.get_collection(constant.COLLECTION_ARTIST)
    result = collection:find_one(search)
    while result do
        retval[#retval + 1] = {}
        retval[#retval][constant.FIELD_ARTIST_ID] = search[constant.FIELD_ARTIST_ID]
        retval[#retval].score = score_artist(stat_view, result, label)
        search[constant.FIELD_ARTIST_ID] = search[constant.FIELD_ARTIST_ID] + 1
        result = collection:find_one(search)
    end
    return retval
end

function score_label(stat_view)
    local collection
    local result
    local artist_score
    local search

    artist_score = {}
    search = {}
    search[constant.FIELD_ARTIST_ID] = 1
    collection = db.get_collection(constant.COLLECTION_LABEL)
    result = collection:find_one(search)
    while result do
        artist_score[constant.FIELD_LABEL_ARTIST_SCORE] = score_all_artists(stat_view, result)
        collection:update_one(search, {["$set"] = artist_score})
        print('Label: ' .. tostring(result[constant.FIELD_LABEL_ID]) .. ' done')
        search[constant.FIELD_ARTIST_ID] = search[constant.FIELD_ARTIST_ID] + 1
        result = collection:find_one(search)
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