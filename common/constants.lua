--
-- User: Luciano
-- Date: 11/11/2017
-- Time: 20:07
--

local constant
constant = {}

--[[
----    DATABASE
--]]
constant.DATABASE_NAME = 'bandy_db'
constant.DATABASE_ADDRESS = 'mongodb://localhost:27017/'
constant.DEFAULT_COLLECTION = 'testcollection'

--[[
----    COLLECTIONS
--]]
constant.COLLECTION_ARTIST = 'musicians'
constant.COLLECTION_LABEL = 'labels'
constant.COLLECTION_USER = 'users'

--[[
----    ARGUMENTS
--]]
constant.ARGUMENT_ONLY_ONE_LABEL = '--label'
constant.ARGUMENT_ONLY_ONE_LABEL_SHORT = '-l'

--[[
----    FIELDS
--]]
constant.FIELD_LABEL_CHECKSUM = '_id'
constant.FIELD_LABEL_CHECKSUM_SUB = 'key'
constant.FIELD_LABEL_ID = 'increments'
constant.FIELD_LABEL_COUNTRY = 'country'
constant.FIELD_LABEL_CITY = 'city'
constant.FIELD_LABEL_GENRE = 'favorite_genre'
constant.FIELD_LABEL_ARTIST_SCORE = 'artist_score'

constant.FIELD_USER_CHECKSUM = '_id'
constant.FIELD_USER_CHECKSUM_SUB = 'key'
constant.FIELD_USER_COUNTRY = 'country'
constant.FIELD_USER_CITY = 'city'
constant.FIELD_USER_ROLE = 'type'

constant.FIELD_ARTIST_USER_CHECKSUM = 'user_id'
constant.FIELD_ARTIST_CHECKSUM = '_id'
constant.FIELD_ARTIST_CHECKSUM_SUB = 'key'
constant.FIELD_ARTIST_ID = 'increments'
constant.FIELD_ARTIST_GENRE = 'genre'
constant.FIELD_ARTIST_VIEW_YOUTUBE = 'youtube_views'
constant.FIELD_ARTIST_VIEW_FACEBOOK = 'facebook_likes'
constant.FIELD_ARTIST_VIEW_SOUNDCLOUD = 'soundcloud_views'
constant.FIELD_ARTIST_VIEW_TWITTER = 'twitter_follows'

--[[
----    ROLES
--]]
constant.ROLE_MUSICIAN = 'musician'
constant.ROLE_LABEL = 'label'
constant.ROLE_ADMIN = 'admin'

--[[
----    SCORE VIEWS
--]]
constant.SCORE_VIEW_MULT = 2

constant.SCORE_VIEW_MULT_MEDIAN = 1 * constant.SCORE_VIEW_MULT
constant.MEDIAN_TIERS_1 = 0.5 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_1_GAIN = 1 * constant.SCORE_VIEW_MULT_MEDIAN
constant.MEDIAN_TIERS_2 = 0.7 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_2_GAIN = 2 * constant.SCORE_VIEW_MULT_MEDIAN
constant.MEDIAN_TIERS_3 = 0.9 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_3_GAIN = 4 * constant.SCORE_VIEW_MULT_MEDIAN

constant.SCORE_VIEW_MULT_AVERAGE = 2 * constant.SCORE_VIEW_MULT
constant.AVERAGE_TIERS_1 = 1 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_1_GAIN = 1 * constant.SCORE_VIEW_MULT_AVERAGE
constant.AVERAGE_TIERS_2 = 1.5 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_2_GAIN = 2 * constant.SCORE_VIEW_MULT_AVERAGE
constant.AVERAGE_TIERS_3 = 2 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_3_GAIN = 3 * constant.SCORE_VIEW_MULT_AVERAGE

--[[
----    SCORE GENRES
--]]
constant.SCORE_GENRE_MULT = 5
constant.GENRE_DISTANT_GAIN = 0 * constant.SCORE_GENRE_MULT
constant.GENRE_CLOSE_GAIN = 1 * constant.SCORE_GENRE_MULT
constant.GENRE_SUB_GAIN = 2 * constant.SCORE_GENRE_MULT
constant.GENRE_EXACT_GAIN = 3 * constant.SCORE_GENRE_MULT

--[[
----    SCORE LOCATION
--]]
constant.SCORE_LOCATION_MULT = 1
constant.LOCATION_DIFFERENT_COUNTRY = 0 * constant.SCORE_LOCATION_MULT
constant.LOCATION_SAME_COUNTRY = 1 * constant.SCORE_LOCATION_MULT
constant.LOCATION_SAME_CITY = 3 * constant.SCORE_LOCATION_MULT

--[[
----    SCORE FILLED_PROFILE
--]]
constant.SCORE_FILLED_PROFILE_MULT = 1
constant.SCORE_FILLED_PROFILE_FIELD_VALUE = 1
constant.SCORE_FILLED_PROFILE_FIELD_GAIN = 2
constant.FILLED_PROFILE_TIERS = {}
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS + 1] = {}
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_VALUE] = 0.25
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_GAIN] = 0 * constant.SCORE_FILLED_PROFILE_MULT
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS + 1] = {}
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_VALUE] = 0.5
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_GAIN] = 1 * constant.SCORE_FILLED_PROFILE_MULT
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS + 1] = {}
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_VALUE] = 0.75
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_GAIN] = 3 * constant.SCORE_FILLED_PROFILE_MULT
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS + 1] = {}
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_VALUE] = 1
constant.FILLED_PROFILE_TIERS[#constant.FILLED_PROFILE_TIERS][constant.SCORE_FILLED_PROFILE_FIELD_GAIN] = 4 * constant.SCORE_FILLED_PROFILE_MULT

return constant