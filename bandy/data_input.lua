--
-- User: Glastis
-- Mail: glastis@glastis.com
-- Date: 28/05/18
-- Time: 20:49
--

local db = require('common.database')
local constant = require('common.constants')
local utilitie = require('common.utilities')

local data_input
data_input = {}

local function get_user_from_artist(artist, user_collection)
    local search

    search = {}
    if not user_collection then
        user_collection = db.get_collection(constant.COLLECTION_USER)
    end
    search[constant.FIELD_USER_CHECKSUM] = db.object_id(artist[constant.FIELD_ARTIST_USER_CHECKSUM])
    search = user_collection.find_one(user_collection, search)
    return search
end
data_input.get_user_from_artist = get_user_from_artist

return data_input