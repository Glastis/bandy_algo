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
constant.DATABASE_NAME = 'testdb'
constant.DATABASE_ADDRESS = 'mongodb://localhost:27017/'
constant.DEFAULT_COLLECTION = 'testcollection'

--[[
----    COLLECTIONS
--]]
constant.COLLECTION_ARTIST = 'artists'
constant.COLLECTION_LABEL = 'labels'
constant.COLLECTION_USER = 'users'

--[[
----    FIELDS
--]]
constant.FIELD_LABEL_ID = '_id'
constant.FIELD_LABEL_GENRE = 'favorite_genre'
constant.FIELD_LABEL_ARTIST_SCORE = 'artist_score'

constant.FIELD_USER_ID = '_id'
constant.FIELD_USER_COUNTRY = 'country'
constant.FIELD_USER_CITY = 'city'
constant.FIELD_USER_ROLE = 'type'

constant.FIELD_ARTIST_USER_ID = 'user_id'
constant.FIELD_ARTIST_ID = '_id'
constant.FIELD_ARTIST_GENRE = 'genre'
constant.FIELD_ARTIST_VIEW_FACEBOOK = 'view_facebook'
constant.FIELD_ARTIST_VIEW_TWITTER = 'view_twitter'
constant.FIELD_ARTIST_VIEW_YOUTUBE = 'view_youtube'
constant.FIELD_ARTIST_VIEW_SOUNDCLOUD = 'view_soundcloud'

--[[
----    ROLES
--]]
constant.ROLE_MUSICIAN = 'musician'
constant.ROLE_LABEL = 'label'
constant.ROLE_ADMIN = 'admin'

--[[
----    SCORE VIEWS
--]]
constant.MEDIAN_TIERS_1 = 0.5 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_1_GAIN = 1
constant.MEDIAN_TIERS_2 = 0.7 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_2_GAIN = 2
constant.MEDIAN_TIERS_3 = 0.9 -- from 0 to 1, 0 == every artist, and 1 == only first one
constant.MEDIAN_TIERS_3_GAIN = 4

constant.AVERAGE_TIERS_1 = 1 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_1_GAIN = 1
constant.AVERAGE_TIERS_2 = 1.5 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_2_GAIN = 2
constant.AVERAGE_TIERS_3 = 2 -- X times better than average, from 0 to infinite
constant.AVERAGE_TIERS_3_GAIN = 3

--[[
----    SCORE GENRES
--]]
constant.GENRE_MULT = 5
constant.GENRE_DISTANT_GAIN = 0 * constant.GENRE_MULT
constant.GENRE_CLOSE_GAIN = 1 * constant.GENRE_MULT
constant.GENRE_SUB_GAIN = 2 * constant.GENRE_MULT
constant.GENRE_EXACT_GAIN = 3 * constant.GENRE_MULT

return constant