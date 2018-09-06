--
-- User: Glastis
-- Date: 11/11/2017
-- Time: 18:59
--

local db = require('common.database')
local constant = require('common.constants')
local utilitie = require('common.utilities')
local data_input = require('bandy.data_input')
local json = require('common.json')

-- DIFFERENTS SCORES SCRIPTS
local view = require('score.views')
local genre = require('score.genres')
local location = require('score.location')
local filled_profile = require('score.filled_profile')

-- DATABASE
local MongoClient = require("mongorover.MongoClient")
local db_client = MongoClient.new(constant.DATABASE_ADDRESS)
local db_database = db_client:getDatabase(constant.DATABASE_NAME)

-- CONSTANTS
local genre_tree
genre_tree = genre.get_genres()

function score_artist(stat_view, artist, label, user)
    local score

    score = view.get_score_stat(stat_view, artist)
    score = genre.get_score_genre(genre_tree, artist[constant.FIELD_ARTIST_GENRE], label[constant.FIELD_LABEL_GENRE]) + score
    score = location.get_score_location(user, label) + score
    score = filled_profile.get_score_filled_profile(artist, user) + score
    -- add here other scores
    return score
end

function score_all_artists(stat_view, label, collection_artist, collection_users)
    local retval
    local result
    local search

    retval = {}
    search = {}
    search[constant.FIELD_ARTIST_ID] = 0
    result = collection_artist:find_one(search)
    while result do
        retval[#retval + 1] = {}
        retval[#retval][constant.FIELD_ARTIST_CHECKSUM] = result[constant.FIELD_ARTIST_CHECKSUM][constant.FIELD_ARTIST_CHECKSUM_SUB]
        retval[#retval].score = score_artist(stat_view, result, label, data_input.get_user_from_artist(result, collection_users))
        search[constant.FIELD_ARTIST_ID] = search[constant.FIELD_ARTIST_ID] + 1
        result = collection_artist:find_one(search)
    end
    return json.stringify(retval)
end

function score_label(stat_view)
    local collection
    local result
    local artist_score
    local search

    artist_score = {}
    search = {}
    search[constant.FIELD_LABEL_ID] = 0
    collection = {}
    collection[constant.COLLECTION_LABEL] = db_database:getCollection(constant.COLLECTION_LABEL)
    result = collection[constant.COLLECTION_LABEL]:find_one(search)
    collection[constant.COLLECTION_ARTIST] = db_database:getCollection(constant.COLLECTION_ARTIST)
    collection[constant.COLLECTION_USER] = db_database:getCollection(constant.COLLECTION_USER)
    while result do
        artist_score[constant.FIELD_LABEL_ARTIST_SCORE] = score_all_artists(stat_view, result, collection[constant.COLLECTION_ARTIST], collection[constant.COLLECTION_USER])
        collection[constant.COLLECTION_LABEL]:update_one(search, {["$set"] = artist_score})
        print('Label: ' .. tostring(result[constant.FIELD_LABEL_ID]) .. ' done')
        search[constant.FIELD_LABEL_ID] = search[constant.FIELD_LABEL_ID] + 1
        result = collection[constant.COLLECTION_LABEL]:find_one(search)
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