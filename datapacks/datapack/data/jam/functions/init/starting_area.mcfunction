scoreboard players add @s timer 1

execute at @e[tag=ship,limit=1,sort=nearest] run kill @e[tag=meteor_center,distance=..64]

execute if score @s timer matches 10 run gamemode spectator @s
execute if score @s timer matches 10 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:spawn_island",posX:-16,posY:-16,posZ:-16,ignoreEntities:0b}
execute if score @s timer matches 10 run setblock ~1 ~ ~ redstone_block

execute if score @s timer matches 20 run gamemode adventure @s
execute if score @s timer matches 20 run fill ~1 ~ ~ ~1 ~2 ~ barrier keep
execute if score @s timer matches 20 run fill ~-1 ~ ~ ~-1 ~2 ~ barrier keep
execute if score @s timer matches 20 run fill ~ ~ ~1 ~ ~2 ~1 barrier keep
execute if score @s timer matches 20 run fill ~ ~ ~-1 ~ ~2 ~-1 barrier keep
execute if score @s timer matches 20 run function jam:worldgen/summon_one

execute if score @s timer matches 199 run function jam:misc/give_basic_items

execute if score @s timer matches 200 run fill ~-1 ~ ~-1 ~1 ~2 ~ air replace barrier
execute if score @s timer matches 200 run tp @s ~-1 ~4 ~ -90 25
execute if score @s timer matches 200 at @s run spawnpoint @s ~ ~ ~
execute if score @s timer matches 200 run effect give @s saturation 10 10 true
execute if score @s timer matches 200 run effect give @s instant_health 10 10 true
execute if score @s timer matches 200 run scoreboard players set @s jetpack_fuel 100

execute if score @s timer matches 210 run tellraw @s ["exposition 1"]
execute if score @s timer matches 280 run tellraw @s ["exposition 2"]
execute if score @s timer matches 360 run tellraw @s ["exposition 3"]


execute if score @s timer matches 400 at @s run tag @s remove loading
