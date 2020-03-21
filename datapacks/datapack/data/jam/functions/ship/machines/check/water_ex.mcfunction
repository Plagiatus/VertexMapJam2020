scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:wet_sponge"},{Slot:4b,id:"minecraft:prismarine_crystals"}]} run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players set @s tmp 1

tag @s[scores={tmp=0}] remove run

execute as @e[tag=ship,distance=..10] run scoreboard players operation @s tmp = @s waterMax
execute as @e[tag=ship,distance=..10] run scoreboard players operation @s tmp -= @s water
execute unless entity @e[tag=ship,distance=..10,scores={tmp=10..}] run tag @s remove run