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

execute if score @s timer matches 199 run replaceitem entity @s armor.head minecraft:feather{display:{Name:'{"text":"Space Helmet","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s timer matches 199 run replaceitem entity @s armor.chest minecraft:golden_chestplate{display:{Name:'{"text":"Broken Spacesuit","italic":false}',Lore:['{"text":"Fuel Capacity: 100","color":"green","italic":false}','{"text":"Oxygen Capacity: 60s","color":"blue","italic":false}','{"text":"Repair in the Upgrade Station","color":"dark_gray"}']},HideFlags:63,capacity:100,oxygen:60}
execute if score @s timer matches 199 run replaceitem entity @s armor.legs minecraft:golden_leggings{display:{Name:'{"text":"Space Leggings","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s timer matches 199 run replaceitem entity @s armor.feet minecraft:golden_boots{display:{Name:'{"text":"Space Boots","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute if score @s timer matches 200 run fill ~-1 ~ ~-1 ~1 ~2 ~ air replace barrier
execute if score @s timer matches 200 run tp @s ~-1 ~4 ~ -90 25
execute if score @s timer matches 200 at @s run spawnpoint @s ~ ~ ~
execute if score @s timer matches 200 run effect @s give saturation 10 10 true
execute if score @s timer matches 200 run effect @s give instant_health 10 10 true
execute if score @s timer matches 200 run scoreboard players set @s jetpack_fuel 100

execute if score @s timer matches 210 run tellraw @s ["exposition 1"]
execute if score @s timer matches 280 run tellraw @s ["exposition 2"]
execute if score @s timer matches 360 run tellraw @s ["exposition 3"]


execute if score @s timer matches 400 at @s run tag @s remove loading
