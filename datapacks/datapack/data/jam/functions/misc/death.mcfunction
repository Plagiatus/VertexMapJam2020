execute unless score @s totem matches 1.. run clear @s
execute unless score @s totem matches 1.. run function jam:misc/give_basic_items
execute if score @s totem matches 1.. run scoreboard players remove @s totem 1

execute at @e[tag=ship,sort=nearest,limit=1] positioned ~ ~-6 ~-7 run function jam:misc/manual

scoreboard players set @s deaths 0