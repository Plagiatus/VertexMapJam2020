scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:gold_ingot"}]} run scoreboard players add @s tmp 1
execute if score @s tmp matches 1 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players add @s tmp 1

tag @s[scores={tmp=..1}] remove run

# TODO: check for enough H2 and capacity for fuel