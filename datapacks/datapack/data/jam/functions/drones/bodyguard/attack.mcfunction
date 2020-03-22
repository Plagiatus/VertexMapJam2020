scoreboard players set @s botMode 1
scoreboard players add @s chargeShot 1

tag @s add currentBot
tag @e[type=#jam:aggro,distance=..1,limit=1] add currentMob

execute at @s if entity @e[tag=currentMob,type=#jam:aggro,distance=..3,limit=1] run tp @s ^0.3 ^ ^ facing entity @e[tag=currentMob,type=#jam:aggro,distance=..3,limit=1]

execute at @s if entity @e[tag=currentMob,type=#jam:aggro,distance=3..20,limit=1] run tp @s ^ ^ ^0.3 facing entity @e[tag=currentMob,type=#jam:aggro,distance=3..20,limit=1]

execute at @s[scores={chargeShot=40..}] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["chargeShot"]}
execute at @s[scores={chargeShot=40..}] run scoreboard players set @s chargeShot 0
execute as @e[type=area_effect_cloud,tag=chargeShot] at @s run function jam:drones/bodyguard/shoot

tag @s remove currentBot
tag @e remove currentMob
