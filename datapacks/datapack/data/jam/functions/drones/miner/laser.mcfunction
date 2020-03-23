execute positioned ~ ~0.8 ~ run particle dust 1.0 0.7 0.2 1.0
execute facing entity @e[type=area_effect_cloud,tag=goldMinerCenter,limit=1,sort=nearest,distance=1..4] feet positioned ^ ^ ^0.2 if block ~ ~ ~ air run function jam:drones/miner/laser
