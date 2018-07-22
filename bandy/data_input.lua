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

--[[
----    Deprecated since we're not storing stats in users anymore - Sould be avoided
--]]
local function get_user_from_artist(artist, user_collection)
    local search

    utilitie.var_dump(artist, true)
    utilitie.var_dump(user_collection, true)
    search = {}
    if not user_collection then
        user_collection = db.get_collection(constant.COLLECTION_USER)
    end
    search[constant.FIELD_USER_ID_FACEBOOK] = artist[constant.FIELD_ARTIST_ID_YOUTUBE]
    print(tostring(user_collection.count(user_collection, {})))
    utilitie.var_dump(search, true)
    search = user_collection.find_one(user_collection, {facebook_likes=6000})
    utilitie.var_dump(search, true)
    return search
end
data_input.get_user_from_artist = get_user_from_artist

return data_input