--
-- User: glastis
-- Date: 31/10/17
-- Time: 14:57
--

-- REQUIRES
local mongo = require('mongorover.MongoClient')
local utilities = require('common.utilities')
local constant = require('common.constants')
local bson = require("mongorover.luaBSONObjects")

-- CONSTANTS
local DATABASE_NAME = constant.DATABASE_NAME
local DEFAULT_COLLECTION = constant.DEFAULT_COLLECTION
local DATABASE_ADDRESS = constant.DATABASE_ADDRESS

local database = {}

--[[
----    purpose: Connect to a remote database
----
----    params: 		db_address,     optional,      ip address or dns address of remote database
----
----    return: 		client database table
--]]
local function connect_db(db_address)
	if not db_address then
		db_address = DATABASE_ADDRESS
	end
	return (mongo.new(db_address))
end
database.connect_db = connect_db

--[[
----    purpose: Get function table of collection
----
----    params: 		collection,     optional,      	collection name, if not specified, using default one instead: DEFAULT_COLLECTION
----					database,    	optional,      	database name, if not specified, using default one instead: DATABASE_NAME
----					db_address,     optional,      	ip address or dns address of remote database, if not specified, using default one instead: DATABASE_ADDRESS
----
----    return: 		collection,						a function table which contains collections commands
--]]
local function get_collection(collection, db, db_address)
	local client

	if not collection then
		collection = DEFAULT_COLLECTION
	end
	if not db then
		db = DATABASE_NAME
	end
	if not db_address then
		db_address = DATABASE_ADDRESS
	end
	client = connect_db(db_address)
	db = client:getDatabase(db)
	collection = db:getCollection(collection)
	return collection
end
database.get_collection = get_collection

--[[
----    purpose: Insert data into remote database
----
----    params: 		data,     		requiered,     	table to insert into database
----					collection,     optional,      	collection name, if not specified, using default one instead: DEFAULT_COLLECTION
----					database,    	optional,      	database name, if not specified, using default one instead: DATABASE_NAME
----					db_address,     optional,      	ip address or dns address of remote database, if not specified, using default one instead: DATABASE_ADDRESS
----
----    return: 		true, 							if data is sucessfully inserted
----					false, 							if an error occured
--]]
local function insert(data, collection, db, db_address)
	collection = get_collection(collection, db, db_address)
	return collection:insert_one(data).acknowledged
end
database.insert = insert

--[[
----    purpose: Insert multiple data into remote database
----
----    params: 		data,     		requiered,     	table to insert into database
----					collection,     optional,      	collection name, if not specified, using default one instead: DEFAULT_COLLECTION
----					database,    	optional,      	database name, if not specified, using default one instead: DATABASE_NAME
----					db_address,     optional,      	ip address or dns address of remote database, if not specified, using default one instead: DATABASE_ADDRESS
----
----    return: 		true, 							if data is sucessfully inserted
----					false, success_table, 			if at least one failed
--]]
local function insert_multi(data, collection, db, db_address)
	local retval

	collection = get_collection(collection, db, db_address)
	return collection:insert_many(data)
end
database.insert_multi = insert_multi

--[[
----    purpose: Insert data in remote database
----
----    params: 		data,     		requiered,     	table to update into database
----					new_data,     	requiered,      new table that will replace data
----					collection,     optional,      	collection name, if not specified, using default one instead: DEFAULT_COLLECTION
----					db,    			optional,      	database name, if not specified, using default one instead: DATABASE_NAME
----					db_address,     optional,      	ip address or dns address of remote database, if not specified, using default one instead: DATABASE_ADDRESS
----
----    return: 		true, 							if data is sucessfully updated
----					false, 							if an error occured
--]]
local function update(data, new_data, collection, db, db_address)
	collection = get_collection(collection, db, db_address)
	return collection:update_one(data, {["$set"] = new_data}).acknowledged
end
database.update = update

--[[
----    purpose: Fetch an element into a collection
----
----    params: 		elem,     		requiered,     	element to find in collection, ex: {color = "blue"}
----					attribute,     	optional,      	fetch only specified attributes, ex: {_id = false, color = true}
----					collection,     optional,      	collection name, if not specified, using default one instead: DEFAULT_COLLECTION
----					db,    			optional,      	database name, if not specified, using default one instead: DATABASE_NAME
----					db_address,     optional,      	ip address or dns address of remote database, if not specified, using default one instead: DATABASE_ADDRESS
----
----    return: 		true, 							if data is sucessfully updated
----					false, 							if an error occured
--]]
local function find(elem, attributes, collection, db, db_address)
	collection = get_collection(collection, db, db_address)
	return collection:find(elem, attributes)
end
database.find = find

local function find_one(elem, collection, db, db_address)
	collection = get_collection(collection, db, db_address)
	return collection:find_one(elem)
end
database.find_one = find_one

local function drop_collection(collection, db, db_address)
	collection = get_collection(collection, db, db_address)
	return collection:drop()
end
database.drop_collection = drop_collection

local function object_id(id)
	return bson.ObjectId.new(id)
end
database.object_id = object_id

return database