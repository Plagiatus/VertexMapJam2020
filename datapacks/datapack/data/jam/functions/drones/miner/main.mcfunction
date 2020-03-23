execute at @a[scores={useGoldBot=1..}] align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["goldMinerSetup"],Duration:200}
execute if entity @e[type=area_effect_cloud,tag=goldMinerSetup,limit=1,sort=nearest,distance=0.1..10,tag=!botGoal,tag=!botFinished] run function jam:drones/miner/setup
execute if entity @s[tag=botGoal,tag=!botFinished] run function jam:drones/miner/mine
execute if entity @s[tag=botFinished] unless entity @s[scores={botMode=0}] run function jam:drones/return_to_owner
