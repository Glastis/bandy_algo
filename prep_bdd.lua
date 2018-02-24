--
-- User: glastis
-- Date: 31/10/17
-- Time: 14:57
--

local db = require('common.database')
local constant = require('common.constants')
local u = require('common.utilities')

-- TEST DATABASE CONSTANTS
local ARTIST_AMOUNT = 1000
local LABEL_AMOUNT = 10

function insert_labels()
    local i = 1
    local data = {}
    local elem

    while i < LABEL_AMOUNT do
        elem = {}
        elem._id = i
        elem.name = "label_" .. tostring(i)
        elem.artist_score = "empty"
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