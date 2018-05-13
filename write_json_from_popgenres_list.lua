--
-- User: Glastis
-- Date: 20/02/18
-- Time: 17:34
--

local file = require('common.file')
local json = require('common.json_loc')
local utilitie = require('common.utilities')

local arg = {...}

-- CONSTANTS

local POPGENRE_ELEM_SEPARATOR = '>'

function is_existing_genre(tree, genre)
    if type(tree) == 'table' then
        local branch
    
        for k,v in pairs(tree) do
            branch = is_existing_genre(v)
            if branch then
                return branch
            end
        end
    end
    return tree == genre
end

function init_tree(filepath)
    local tree
    local line
    local elem
    local tmp
    local f

    tree = {}
    f, line = file.read_line(filepath)
    repeat
        tmp = utilitie.split(line, POPGENRE_ELEM_SEPARATOR)
        elem = {}
        elem['name'] = utilitie.trim(tmp[1])
        elem['sub'] = utilitie.trim(tmp[2])
        tree[#tree + 1] = elem
        f, line = file.read_line(nil, f)
    until not f
    return tree
end

function get_root_genres(tree)
    local i
    local isub
    local root

    i = 1
    root = {}
    while i <= #tree do
        if not utilitie.get_elem_in_table(root, tree[i]['name']) then
            root[#root + 1] = tree[i]['name']
        end
        i = i + 1
    end
    i = 1
    while i <= #root do
        isub = 1
        while isub <= #tree do
            if root[i] == tree[isub]['sub'] then
                root[i] = root[#root]
                root[#root] = nil
                isub = 1
            end
            isub = isub + 1
        end
        i = i + 1
    end
    return root
end

function get_sub_from_genre(tree, name)
    local i
    local sub

    sub = {}
    i = 1
    while i <= #tree do
        if tree[i]['name'] == name and not utilitie.get_elem_in_table(sub, tree[i]['sub']) then
            sub[#sub + 1] = {}
            sub[#sub]['name'] = tree[i]['sub']
            sub[#sub]['sub'] = get_sub_from_genre(tree, tree[i]['sub'])
        end
        i = i + 1
    end
    if #sub == 0 then
        return nil
    end
    return sub
end

function build_result_tree(tree, root, result)
    local i

    i = 1
    while i <= #root do
        result[#result + 1] = {}
        result[#result]['name'] = root[i]
        result[#result]['sub'] = get_sub_from_genre(tree, root[i])
        i = i + 1
    end
end

function core(filepath)
    local tree
    local root
    local result

    result = {}
    tree = init_tree(filepath)
--    utilitie.var_dump(tree, true)
    root = get_root_genres(tree)
--    utilitie.var_dump(tree, true)
    result = get_sub_from_genre(tree, 'Heavy metal')
    utilitie.var_dump(result, true)
    utilitie.var_dump(json.encode(result, true))
    --[[build_result_tree(tree, root, result)
    utilitie.var_dump(result, true)]]
    return true
end

if not arg[1] then
    print('lua write_json_from_popgenres_list.lua popgenres.txt')
    return false
end

return core(tostring(arg[1]))
