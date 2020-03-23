scoreboard players set @s botMode 3
scoreboard players set @a[scores={useGoldBot=1..}] useGoldBot 0
execute at @s run tp @s ^ ^ ^0.3 facing entity @e[type=area_effect_cloud,tag=goldMinerSetup,limit=1,sort=nearest,distance=..10]
execute at @e[type=area_effect_cloud,tag=goldMinerSetup,limit=1,sort=nearest,distance=..0.3] run function jam:drones/miner/init_data
