Config = {}

Config.NPC = vector4(-1266.99, -3013.06, -48.49, 187.41) -- Location for the NPC to spawn.
Config.Model = "cs_fbisuit_01" -- NPC Model.
Config.VehicleSpawn = vector4(-1266.98, -3002.33, -47.49, 179.84) -- Location for car to spawn.
Config.Garage = "legionsquare" -- Default garage for the car to be tagged too.

Config.CoinShop = {
    [1] = {
        type = "car", -- Item/Car
        name = "voltic", -- Name of Item.
        amount = 1, -- amount of items to give.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Voltic", -- Header Text.
        text = "Buy Voltic for 1 coin.", -- Sub Text.
    },
    [2] = {
        type = "car", -- Item/Car
        name = "sultan", -- Model of the vehicle to spawn.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Sultan", -- Header Text.
        text = "Buy a Sultan for 1 coin.", -- Sub Text.
    },
	[3] = {
        type = "car", -- Item/Car
        name = "brioso", -- Model of the vehicle to spawn.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Brioso", -- Header Text.
        text = "Buy a Brioso for 1 coin.", -- Sub Text.
    },
	[4] = {
        type = "car", -- Item/Car
        name = "voltic", -- Name of Item.
        amount = 1, -- amount of items to give.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Voltic", -- Header Text.
        text = "Buy Voltic for 1 coin.", -- Sub Text.
    },
    [5] = {
        type = "car", -- Item/Car
        name = "sultan", -- Model of the vehicle to spawn.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Sultan", -- Header Text.
        text = "Buy a Sultan for 1 coin.", -- Sub Text.
    },
	[6] = {
        type = "car", -- Item/Car
        name = "brioso", -- Model of the vehicle to spawn.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Brioso", -- Header Text.
        text = "Buy a Brioso for 1 coin.", -- Sub Text.
    },
}

Config.Packages = {
    ["coinpack1"] = 100, -- Number of coins given on redemption.
    ["coinpack2"] = 200, -- Number of coins given on redemption.
}
