execute as @e[type=armor_stand,tag=bot,tag=!processedBot,limit=1,sort=nearest] store result entity @s Rotation[0] float 1 run scoreboard players get #radius tmp
tag @e[type=armor_stand,tag=bot,tag=!processedBot,limit=1,sort=nearest] add processedBot
scoreboard players operation #radius tmp += #radiusO tmp
execute if entity @e[tag=!processedBot] run function jam:drones/place_uniformly
