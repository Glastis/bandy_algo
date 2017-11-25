--
-- User: Glastis
-- Date: 21/11/2017
-- Time: 08:08
--

local constant = require('constants')

local stat = {}

local function median(value_table)
    local retval

    retval = {}
    table.sort(value_table)
    retval.tiers_1 = value_table[math.floor(#value_table * constant.MEDIAN_TIERS_1)]
    retval.tiers_2 = value_table[math.floor(#value_table * constant.MEDIAN_TIERS_2)]
    retval.tiers_3 = value_table[math.floor(#value_table * constant.MEDIAN_TIERS_3)]
    return retval
end
stat.median = median

local function average(value_table)
    local i
    local retval

    i = #value_table
    retval = 0
    while i > 0 do
        retval = retval + value_table[i]
        i = i - 1
    end
    return retval / #value_table
end
stat.average = average

return stat