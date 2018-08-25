--
-- User: Glastis
-- Mail: glastis@glastis.com
-- Date: 25/08/18
-- Time: 22:19
--

local constant = require('common.constants')

local location
location = {}

local function get_score_location(user, label)
    if user[constant.FIELD_USER_COUNTRY] ~= label[constant.FIELD_LABEL_COUNTRY] then
        return constant.LOCATION_DIFFERENT_COUNTRY
    elseif user[constant.FIELD_USER_CITY] ~= label[constant.FIELD_LABEL_CITY] then
        return constant.LOCATION_SAME_COUNTRY
    end
    return constant.LOCATION_SAME_CITY
end
location.get_score_location = get_score_location

return location