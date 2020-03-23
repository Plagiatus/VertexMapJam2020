scoreboard players set @s botXPos 0
scoreboard players add @s botZPos 1
execute as @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~-1
execute as @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..5] at @s run tp @s ~5 ~ ~
execute if score @s botZPos matches 5.. run function jam:drones/miner/movey
#execute at @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..4] if block ~ ~ ~ air run function jam:drones/miner/movez
