--
-- Created by IntelliJ IDEA.
-- User: Luciano
-- Date: 21/11/2017
-- Time: 06:47
-- To change this template use File | Settings | File Templates.
--

local file = {}

local function is_existing(filepath)
    local f

    f = io.open(filepath,"r")
    if f then
        io.close(f)
        return true
    end
    return false
end
file.is_existing = is_existing

local function read(filepath)
    local f
    local str

    f = io.open(filepath, 'rb')
    str = f:read('*all')
    f:close()
    return str
end
file.reaf = reaf

local function write(filepath, str, mode)
    local f

    if not mode then
        mode = "a"
    end
    f = io.open(filepath, mode)
    f:write(str)
    f:close()
end
file.write = write

local function read_line(filepath, file)
    local line

    if not file then
        file = io.open(filepath, 'rb')
    end
    line = file:read()
    if line then
       return file, line
    end
    file:close()
    return nil
end
file.read_line = read_line

return file


