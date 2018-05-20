--
-- User: glastis
-- Date: 31/10/17
-- Time: 14:57
--

local db = require('common.database')
local constant = require('common.constants')
local u = require('common.utilities')
local genre = require('score.genres')

-- TEST DATABASE CONSTANTS
local ARTIST_AMOUNT = 100
local LABEL_AMOUNT = 100

-- CONTANTS
local GENRE_LIST, GENRE_AMOUNT = genre.get_genres()

function get_random_genre()
    local rng
    local i
    local x

    rng = math.random(1, GENRE_AMOUNT)
    i = 1
    while GENRE_LIST[i] do
        rng = rng - 1
        if rng == 0 then
            return GENRE_LIST[i].name
        end
        x = 1
        while GENRE_LIST[i].sub and GENRE_LIST[i].sub[x] do
            rng = rng - 1
            if rng == 0 then
                return GENRE_LIST[i].sub[x]
            end
            x = x + 1
        end
        i = i + 1
    end
    error('Random genre error')
end

function insert_labels()
    local i = 1
    local data = {}
    local elem

    while i < LABEL_AMOUNT do
        elem = {}
        elem._id = i
        elem.name = "label_" .. tostring(i)
        elem.artist_score = "empty"
        elem.searched_genre = get_random_genre()
        data[i] = elem
        i = i + 1
    end
    elem = db.insert_multi(data, constant.COLLECTION_LABEL)
end

function insert_artists()
    local i = 1
    local data = {}
    local elem

    while i < ARTIST_AMOUNT do
        elem = {}
        elem._id = i
        elem.view_facebook = math.random(0, 10000)
        elem.view_twitter = math.random(0, 5000)
        elem.view_youtube = math.random(0, 3000)
        elem.view_soundcloud = math.random(0, 1000)
        elem.name = "artist_" .. tostring(i)
        elem.genre = get_random_genre()
        data[i] = elem
        i = i + 1
    end
    elem = db.insert_multi(data, constant.COLLECTION_ARTIST)
end

function main()
    db.drop_collection(constant.COLLECTION_ARTIST)
    db.drop_collection(constant.COLLECTION_LABEL)
    insert_artists()
    insert_labels()
    print('Done')
end

main()