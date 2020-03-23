execute at @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..4] if block ~ ~ ~ air run function jam:drones/miner/movex
scoreboard players add @s botTimer 1
execute if score @s botTimer matches 10 at @s run function jam:drones/miner/laser
tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..4] feet
execute if score @s botTimer matches 20 run function jam:drones/miner/laser
execute if score @s botTimer matches 20 at @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=..4] run setblock ~ ~ ~ air destroy
execute if score @s botTimer matches 20 run function jam:drones/miner/movex
execute if score @s botTimer matches 20.. run scoreboard players set @s botTimer 0
