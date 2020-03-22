scoreboard players set @s botMode 1

tag @s add currentBot
tag @e[type=#jam:aggro] add currentMob

execute at @s if entity @e[tag=currentMob,type=#jam:aggro,distance=..5,limit=1] run tp @s ~ ~ ~ ~5 ~
execute at @s unless entity @e[tag=currentMob,type=#jam:aggro,distance=..5,limit=1] run tp @s ^ ^ ^0.3 facing entity @e[tag=currentMob,type=#jam:aggro,distance=..20,limit=1]
