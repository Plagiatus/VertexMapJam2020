# initialize if no scores are set yet
execute unless score @s water = @s water run scoreboard players set @s water 500
execute unless score @s waterMax = @s waterMax run scoreboard players set @s waterMax 4000
execute unless score @s hydrogen = @s hydrogen run scoreboard players set @s hydrogen 0
execute unless score @s hydrogenMax = @s hydrogenMax run scoreboard players set @s hydrogenMax 12000
execute unless score @s oxygen = @s oxygen run scoreboard players set @s oxygen 1000
execute unless score @s oxygenMax = @s oxygenMax run scoreboard players set @s oxygenMax 6000
execute unless score @s fuel = @s fuel run scoreboard players set @s fuel 5000
execute unless score @s fuelMax = @s fuelMax run scoreboard players set @s fuelMax 50000

#water
scoreboard players operation @s tmp = @s water
scoreboard players operation @s tmp *= $6 const
scoreboard players operation @s tmp /= @s waterMax
scoreboard players add @s tmp 1

execute if score @s tmp matches 1 run setblock ~2 ~-3 ~ iron_bars[east=true,north=false,south=false,west=true]
execute if score @s tmp matches 2 run setblock ~2 ~-3 ~ iron_bars[east=false,north=true,south=false,west=true]
execute if score @s tmp matches 3 run setblock ~2 ~-3 ~ iron_bars[east=true,north=true,south=true,west=true]
execute if score @s tmp matches 4 run setblock ~2 ~-3 ~ iron_bars[east=true,north=false,south=true,west=true]
execute if score @s tmp matches 5 run setblock ~2 ~-3 ~ iron_bars[east=false,north=true,south=true,west=false]
execute if score @s tmp matches 6.. run setblock ~2 ~-3 ~ iron_bars[east=false,north=true,south=true,west=true]
execute if score @s water matches 0 run setblock ~2 ~-3 ~ iron_bars[east=false,north=false,south=true,west=false]

#h2
scoreboard players operation @s tmp = @s hydrogen
scoreboard players operation @s tmp *= $6 const
scoreboard players operation @s tmp /= @s hydrogenMax
scoreboard players add @s tmp 1

execute if score @s tmp matches 1 run setblock ~-2 ~-3 ~ glass_pane[east=true,north=false,south=false,west=true]
execute if score @s tmp matches 2 run setblock ~-2 ~-3 ~ glass_pane[east=false,north=true,south=false,west=true]
execute if score @s tmp matches 3 run setblock ~-2 ~-3 ~ glass_pane[east=true,north=true,south=true,west=true]
execute if score @s tmp matches 4 run setblock ~-2 ~-3 ~ glass_pane[east=true,north=false,south=true,west=true]
execute if score @s tmp matches 5 run setblock ~-2 ~-3 ~ glass_pane[east=false,north=true,south=true,west=false]
execute if score @s tmp matches 6.. run setblock ~-2 ~-3 ~ glass_pane[east=false,north=true,south=true,west=true]
execute if score @s hydrogen matches 0 run setblock ~-2 ~-3 ~ glass_pane[east=false,north=false,south=true,west=false]

#o2
scoreboard players operation @s tmp = @s oxygen
scoreboard players operation @s tmp *= $6 const
scoreboard players operation @s tmp /= @s oxygenMax
scoreboard players add @s tmp 1

execute if score @s tmp matches 1 run setblock ~ ~-3 ~ glass_pane[east=true,north=false,south=false,west=false]
execute if score @s tmp matches 2 run setblock ~ ~-3 ~ glass_pane[east=true,north=true,south=false,west=false]
execute if score @s tmp matches 3 run setblock ~ ~-3 ~ glass_pane[east=true,north=true,south=true,west=false]
execute if score @s tmp matches 4 run setblock ~ ~-3 ~ glass_pane[east=true,north=true,south=false,west=true]
execute if score @s tmp matches 5 run setblock ~ ~-3 ~ glass_pane[east=false,north=true,south=false,west=false]
execute if score @s tmp matches 6.. run setblock ~ ~-3 ~ glass_pane[east=true,north=false,south=true,west=false]
execute if score @s oxygen matches 0 run setblock ~ ~-3 ~ glass_pane[east=false,north=false,south=false,west=false]

#fuel
scoreboard players operation @s tmp = @s fuel
scoreboard players operation @s tmp *= $6 const
scoreboard players operation @s tmp /= @s fuelMax
scoreboard players add @s tmp 1

execute if score @s tmp matches 1 run setblock ~-4 ~-3 ~ iron_bars[east=true,north=false,south=false,west=false]
execute if score @s tmp matches 2 run setblock ~-4 ~-3 ~ iron_bars[east=true,north=true,south=false,west=false]
execute if score @s tmp matches 3 run setblock ~-4 ~-3 ~ iron_bars[east=true,north=true,south=true,west=false]
execute if score @s tmp matches 4 run setblock ~-4 ~-3 ~ iron_bars[east=true,north=true,south=false,west=true]
execute if score @s tmp matches 5 run setblock ~-4 ~-3 ~ iron_bars[east=false,north=true,south=false,west=false]
execute if score @s tmp matches 6.. run setblock ~-4 ~-3 ~ iron_bars[east=true,north=false,south=true,west=false]
execute if score @s fuel matches 0 run setblock ~-4 ~-3 ~ iron_bars[east=false,north=false,south=false,west=false]