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
local USERS_AMOUNT = ARTIST_AMOUNT + LABEL_AMOUNT


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
    local i
    local data
    local elem

    i = 0
    data = {}
    while i <= LABEL_AMOUNT do
        elem = {}
        elem[constant.FIELD_LABEL_ID] = i
        elem[constant.FIELD_LABEL_ARTIST_SCORE] = "empty"
        elem[constant.FIELD_LABEL_GENRE] = get_random_genre()
        data[#data + 1] = elem
        i = i + 1
    end
    return db.insert_multi(data, constant.COLLECTION_LABEL)
end

function insert_users()
    local i
    local data
    local elem

    i = 0
    data = {}
    while i <= USERS_AMOUNT do
        elem = {}
        elem[constant.FIELD_USER_CHECKSUM] = {}
        elem[constant.FIELD_USER_CHECKSUM][constant.FIELD_USER_CHECKSUM_SUB] = i
        elem[constant.FIELD_USER_COUNTRY] = "empty"
        elem[constant.FIELD_USER_CITY] = "empty"
        elem[constant.FIELD_USER_VIEW_FACEBOOK] = math.random(0, 10000)
        elem[constant.FIELD_USER_VIEW_TWITTER] = math.random(0, 5000)
        if i > LABEL_AMOUNT then
            elem[constant.FIELD_USER_ROLE] = constant.ROLE_MUSICIAN
        else
            elem[constant.FIELD_USER_ROLE] = constant.ROLE_LABEL
        end
        data[#data + 1] = elem
        i = i + 1
    end
    return db.insert_multi(data, constant.COLLECTION_USER)
end

function insert_artists()
    local i
    local data
    local elem

    i = 0
    data = {}
    while i <= ARTIST_AMOUNT do
        elem = {}
        elem[constant.FIELD_ARTIST_ID] = i
        elem[constant.FIELD_ARTIST_USER_CHECKSUM] = i + LABEL_AMOUNT
        elem[constant.FIELD_ARTIST_VIEW_YOUTUBE] = math.random(0, 3000)
        elem[constant.FIELD_ARTIST_VIEW_SOUNDCLOUD] = math.random(0, 1000)
        elem[constant.FIELD_ARTIST_GENRE] = get_random_genre()
        data[#data + 1] = elem
        i = i + 1
    end
    return db.insert_multi(data, constant.COLLECTION_ARTIST)
end

function main()
    db.drop_collection(constant.COLLECTION_USER)
    db.drop_collection(constant.COLLECTION_ARTIST)
    db.drop_collection(constant.COLLECTION_LABEL)
    insert_users()
    insert_artists()
    insert_labels()
    print('Done')
end

main()