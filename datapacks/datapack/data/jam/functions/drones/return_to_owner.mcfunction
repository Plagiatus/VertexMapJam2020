tag @s add currentBot
execute as @a at @s as @e[type=armor_stand,limit=1,tag=currentBot] if score @s ID = @p ID run tag @p add currentOwner
tp @s ^ ^ ^0.2 facing entity @p[tag=currentOwner]

#After it is finished:
execute if entity @p[tag=currentOwner,distance=..1] run scoreboard players set @s botMode 0
execute if entity @p[tag=currentOwner,distance=..1] run tag @s remove returnToOwner

tag @s remove currentBot
tag @a remove currentOwner
