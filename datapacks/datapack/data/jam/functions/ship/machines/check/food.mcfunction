scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:spider_eye"},{Slot:4b,id:"minecraft:cooked_porkchop"}]} run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players set @s tmp 1

tag @s[scores={tmp=0}] remove run

execute unless entity @e[tag=ship,distance=..10,scores={water=1..}] run tag @s remove run