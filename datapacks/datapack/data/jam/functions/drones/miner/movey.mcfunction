scoreboard players set @s botZPos 0
scoreboard players add @s botYPos 1
execute as @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~-1 ~
execute as @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~5
execute if score @s botYPos matches 5.. run tag @s add botFinished
execute if score @s botYPos matches 5.. run kill @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..5]
execute if score @s botYPos matches 5.. run scoreboard players set @s botYPos 0
execute at @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..4] if block ~ ~ ~ air run function jam:drones/miner/movey
