scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:gold_ingot"}]} run scoreboard players add @s tmp 1
execute if score @s tmp matches 1 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players add @s tmp 1

tag @s[scores={tmp=..1}] remove run

execute unless entity @e[tag=ship,distance=..10,scores={hydrogen=10..}] run tag @s remove run

execute as @e[tag=ship,distance=..10] run scoreboard players operation @s tmp = @s fuelMax
execute as @e[tag=ship,distance=..10] run scoreboard players operation @s tmp -= @s fuel
execute unless entity @e[tag=ship,distance=..10,scores={tmp=100..}] run tag @s remove run