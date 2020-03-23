scoreboard players add @s timer 1

execute if score @s timer matches 3 run gamemode spectator @s
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

execute if score @s timer matches 210 run tellraw @s ["<",{"selector":"@s"},{"text":"> Ughh... I feel like I've slept for a million years..."}]
execute if score @s timer matches 260 run tellraw @s ["<",{"selector":"@s"},{"text":"> Oh no! What happened here? Where is everyone? Where is my planet?"}]
execute if score @s timer matches 340 run tellraw @s ["<",{"selector":"@s"},{"text":"> Everything and everyone is gone! :( I'm all by myself. But maybe if I manage to bring this ship back online, I can search for my friends!"}]
execute if score @s timer matches 380 run tellraw @s ["<",{"selector":"@s"},{"text":"> I barely remember anything... Only that I put the "},{"text":"ships User Manual","color":"gold"},{"text":" into the "},{"text":"Chest next to my bed","color":"gold"},"."]

execute if score @s timer matches 400 run tag @s remove loading
