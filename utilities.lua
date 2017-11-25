--
-- User: glastis
-- Date: 01/11/17
-- Time: 14:51
--

local file = require('file')

local utilities = {}

local function get_elem_in_table(table, elem)
    local i

    i = 1
    while i < #table do
        if table[i] == elem then
            return i
        end
        i = i + 1
    end
    return false
end
utilities.get_elem_in_table = get_elem_in_table

local function concatenate_arrays(t1, t2)
    local i

    i = 1
    while i <= #t2 do
        t1[#t1 + 1] = t2[i]
        i = i + 1
    end
    return t1
end
utilities.concatenate_arrays = concatenate_arrays

local function split(str, separator)
    local t = {}
    local i

    i = 1
    for line in string.gmatch(str, "([^" .. separator .. "]+)") do
        t[i] = line
        i = i + 1
    end
    return t
end
utilities.split = split

local function exec_function_table(actions, param)
    local i

    i = 1
    if not param then
        param = {}
    end
    while i <= #actions do
        actions[i](param[i])
        i = i + 1
    end
end
utilities.exec_function_table = exec_function_table

local function exec_function_table_revert(actions, param)
    local i

    i = #actions
    if not param then
        param = {}
    end
    while i > 0 do
        actions[i](param[i])
        i = i - 1
    end
end
utilities.exec_function_table_revert = exec_function_table_revert

local function debug_info(more, calltrace)
    if not more then
        more = " "
    end
    if calltrace then
        local trace

        trace = split(split(debug.traceback(), '\n')[3], '/')
        file.write("trace.log", '\n' .. trace[#trace] .. '\n' .. more .. '\n')
    else
        file.write("trace.log", more .. '\n')
    end
end
utilities.debug_info = debug_info

local function var_dump(var)
    if type(var) == 'table' then
        local s

        s = '{ '
        for k,v in pairs(var) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '\n[' .. k .. '] = ' .. var_dump(v) .. ','
        end
        return s .. '\n} '
    end
    return tostring(var)
end
utilities.var_dump = var_dump

local function round(number, decimals, ext_abs)
    if ext_abs then
        ext_abs = math.floor
    else
        ext_abs = math.ceil
    end
    if not decimals then
        return ext_abs(number)
    end
    decimals = 10 ^ decimals
    return ext_abs(number * decimals) / decimals
end
utilities.round = round

return utilities
