tag @s add currentBot
execute as @a at @s as @e[type=armor_stand,limit=1,tag=currentBot] if score @s botID = @p botID run tag @p add currentOwner
tp @s ^ ^ ^0.2 facing entity @p[tag=currentOwner]
execute at @s run tp @s @s

#After it is finished:
execute if entity @p[tag=currentOwner,distance=..0.5] run function jam:drones/reset_bot

tag @s remove currentBot
tag @a remove currentOwner
