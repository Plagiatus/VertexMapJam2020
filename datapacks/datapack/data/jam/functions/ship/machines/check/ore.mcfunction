scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:4b,id:"minecraft:iron_ingot"}]} run scoreboard players set @s tmp 1
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:gold_ore"},{Slot:4b,id:"minecraft:gold_ingot"}]} run scoreboard players set @s tmp 1
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:diamond_ore"},{Slot:4b,id:"minecraft:diamond_ingot"}]} run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players set @s tmp 1
tag @s[scores={tmp=0}] remove run

execute unless entity @e[tag=ship,distance=..10,scores={water=1..}] run tag @s remove run