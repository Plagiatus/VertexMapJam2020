tp @s ~ ~ ~ 0 0
tag @s add botGoal
kill @e[type=area_effect_cloud,tag=goldMinerSetup,limit=1,sort=nearest,distance=..0.01]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~2 ~2 ~2 {Tags:["goldMinerCenter"],Duration:2500}
scoreboard players set @s botXPos 0
scoreboard players set @s botYPos 0
scoreboard players set @s botZPos 0
