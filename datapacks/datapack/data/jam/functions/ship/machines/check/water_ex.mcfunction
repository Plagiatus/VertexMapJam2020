scoreboard players set @s tmp 0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:wet_sponge"},{Slot:4b,id:"minecraft:prismarine_crystals"}]} run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} run scoreboard players set @s tmp 1

tag @s[scores={tmp=0}] remove run
# TODO: check for both water supply and H2/O2 capacity