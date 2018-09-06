--
-- User: Glastis
-- Mail: glastis@glastis.com
-- Date: 06/09/18
-- Time: 07:08
--

local constant = require('common.constants')

local filled_profile
filled_profile = {}

local function get_tiers_value(filled_ratio)
    local i

    i = 1
    while constant.FILLED_PROFILE_TIERS[i] do
        if filled_ratio <= constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_VALUE] then
            return constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_GAIN]
        end
        i = i + 1
    end
    error('get_score_filled_profile: get_tiers_value: ratio must be between 0 and 1. Currently:' .. tostring(filled_ratio))
end

local function get_score_filled_profile(artist, user)
    local filled_field
    local all_fields
    local i

    i = 1;
    filled_field = 0;
    all_fields = {}
    all_fields[#all_fields + 1] = 'band'
    all_fields[#all_fields + 1] = 'genre'
    all_fields[#all_fields + 1] = 'name'
    all_fields[#all_fields + 1] = 'country'
    all_fields[#all_fields + 1] = 'city'
    all_fields[#all_fields + 1] = 'profile_picture'
    all_fields[#all_fields + 1] = 'description'
    all_fields[#all_fields + 1] = 'facebook_id'
    all_fields[#all_fields + 1] = 'twitter_id'
    all_fields[#all_fields + 1] = 'youtube_id'
    all_fields[#all_fields + 1] = 'soundcloud_id'

    while all_fields[i] do
        if artist[all_fields[i]] or user[all_fields[i]] then
            filled_field = filled_field + 1
        end
        i = i + 1
    end
    return get_tiers_value(filled_field / #all_fields)
end
filled_profile.get_score_filled_profile = get_score_filled_profile

return filled_profile