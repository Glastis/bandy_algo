--
-- User: Luciano
-- Date: 11/11/2017
-- Time: 20:07
--

local constant

constant = {}


-- DATABASE
constant.DATABASE_NAME = 'testdb'
constant.DATABASE_ADDRESS = 'mongodb://localhost:27017/'
constant.DEFAULT_COLLECTION = 'testcollection'

-- COLLECTIONS
constant.COLLECTION_ARTIST = 'artists'
constant.COLLECTION_LABEL = 'labels'

--[[
---- SCORE
--]]
-- VIEWS
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

-- GENRES
constant.GENRE_DISTANT_GAIN = 0
constant.GENRE_CLOSE_GAIN = 1
constant.GENRE_SUB_GAIN = 2
constant.GENRE_EXACT_GAIN = 3

return constant