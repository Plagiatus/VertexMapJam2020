execute as @e[type=armor_stand,tag=bot,tag=countBots,limit=1,sort=nearest] store result entity @s Rotation[0] float 1 run scoreboard players get #radius tmp
tag @e[type=armor_stand,tag=bot,tag=countBots,limit=1,sort=nearest] remove countBots
scoreboard players operation #radius tmp += #radiusO tmp
execute if entity @e[type=armor_stand,tag=bot,tag=countBots] run function jam:drones/place_uniformly
