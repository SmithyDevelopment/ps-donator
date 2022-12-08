![image](https://user-images.githubusercontent.com/82112471/195740699-7fe040c6-bd35-4376-85c0-b045aa8ff4e4.png)

# Instructions
Run the sql code in donator.sql to your database.

Follow the Tebex instructions to get Tebex installed on your server.
In your Tebex store on the packages you want coins to be added to do the following.
At the bottom of the package select "Add Game Server Command"
![image](https://user-images.githubusercontent.com/7463741/193162239-df5c838a-63f4-4ac0-816f-0e783275026a.png)

In the "When the package is purchased" section paste the following
```
donatorPurchase {"transactionId":"{transaction}", "package":"{packageName}"}
```
![image](https://user-images.githubusercontent.com/7463741/193162202-93c9245d-c49e-4837-922c-53fe3a273c63.png)

IMPORTANT
The packagename in the config needs to MATCH the package name in tebex.
So if you have a package named "coinpack1" in tebex then you need to have in the config.
```
    ["coinpack1"] = CoinAmountHere,
```

Players can use the /redeem transactionId in game to have their coins added.




# Smithy Developments Additions

Moved NPC to Airport Hangar (under the map)
Added polyzone and vehiclespawns to qb-vehicleshop
Added teleport into hangar, from airport hangar door (no vehicle) and out from the hangar interior (with vehicle allowed)
When you edit the donor vehicles, you need to changed them in Both configs.. vehicleshop and ps-donator.


# Instuctions Below for changes..

Add this to your qb-vehicleshop config...

['donorshop'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1280.8961181641, -3028.1755371094),
				vector2(-1283.2631835938, -2996.509765625),
				vector2(-1249.8070068359, -2995.814453125),
				vector2(-1250.4390869141, -3026.8908691406)
            },
            ['minZ'] = -47.0,  -- min height of the shop zone
            ['maxZ'] = -49.0,  -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'donordealer', -- Name of job or none
        ['ShopLabel'] = 'Donor Shop',
		['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 2,  -- Blip color
        ['Categories'] = {
            ["sports"]  = "Sports",
            ["sportsclassics"] = "Sports Classics",
            ["super"]   = "Super",
            ["sedans"]  = "Sedans",
            ["coupes"]  = "Coupes",
            ["suvs"]    = "SUVs",
            ["offroad"] = "Offroad",
            ["muscle"] = "Muscle",
            ["compacts"] = "Compacts",
            ["motorcycles"] = "Motorcycles",
            ["vans"] = "Vans"
        },
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1277.66, -3012.55, -49.49, 270.06),
                defaultVehicle = 'brioso',
                chosenVehicle = 'brioso',
            },
			[2] = {
                coords = vector4(-1275.79, -3007.26, -49.49, 236.55),
                defaultVehicle = 'sultan2',
                chosenVehicle = 'sultan2',
            },
			[3] = {
                coords = vector4(-1271.84, -3003.82, -49.49, 207.6),
                defaultVehicle = 'streiter',
                chosenVehicle = 'streiter',
            },
			[4] = {
                coords = vector4(-1261.92, -3003.65, -49.49, 151.38),
                defaultVehicle = 'voltic',
                chosenVehicle = 'voltic',
            },
			[5] = {
                coords = vector4(-1258.09, -3007.14, -49.49, 125.54),
                defaultVehicle = 'sultan',
                chosenVehicle = 'sultan',
            },
			[6] = {
                coords = vector4(-1256.06, -3012.21, -49.49, 90.1),
                defaultVehicle = 'brioso',
                chosenVehicle = 'brioso',
            }
        },
    },
	
Add this to qb-smallresources config.lua.. config.teleports

-- DonorShop
	[3] = {                        
        [1] = {
            coords = vector4(-1392.81, -3261.92, 13.94, 154.33),
            ["AllowVehicle"] = false,
            drawText = '[E] Donor Shop'
        },
        [2] = {
            coords = vector4(-1267.68, -3039.53, -48.49, 183.43),
            ["AllowVehicle"] = true,
            drawText = '[E] Leave Shop'
        },
    }, 
