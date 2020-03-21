replaceitem block ~ ~ ~ container.1 minecraft:structure_void
replaceitem block ~ ~ ~ container.2 minecraft:structure_void
replaceitem block ~ ~ ~ container.3 minecraft:structure_void

#check whether it's running
tag @s add run
execute if block ~ ~ ~ hopper{Items:[{Slot:4b,Count:64b}]} run tag @s remove run
execute unless block ~ ~ ~ hopper{Items:[{Slot:0b}]} run tag @s remove run

# check for hopper specific circumstances
execute as @e[tag=run,tag=water_ex] run function jam:ship/machines/check/water_ex
execute as @e[tag=run,tag=food] run function jam:ship/machines/check/food
execute as @e[tag=run,tag=ore] run function jam:ship/machines/check/ore
execute as @e[tag=run,tag=fuel] run function jam:ship/machines/check/fuel

# enabled? 
execute as @s[tag=run,scores={timer=5}] run replaceitem block ~ ~ ~ container.2 minecraft:structure_void{CustomModelData:1}
execute as @s[tag=run,scores={timer=4}] run replaceitem block ~ ~ ~ container.2 minecraft:structure_void{CustomModelData:2}
execute as @s[tag=run,scores={timer=3}] run replaceitem block ~ ~ ~ container.2 minecraft:structure_void{CustomModelData:3}
execute as @s[tag=run,scores={timer=2}] run replaceitem block ~ ~ ~ container.2 minecraft:structure_void{CustomModelData:4}
execute as @s[tag=run,scores={timer=1}] run replaceitem block ~ ~ ~ container.2 minecraft:structure_void{CustomModelData:5}
execute as @s[tag=run] run scoreboard players remove @s timer 1

# if enabled, run machine specific crafting
execute as @e[scores={timer=0},tag=run,tag=water_ex] run function jam:ship/machines/result/water_ex
execute as @e[scores={timer=0},tag=run,tag=food] run function jam:ship/machines/result/food
execute as @e[scores={timer=0},tag=run,tag=ore] run function jam:ship/machines/result/ore
execute as @e[scores={timer=0},tag=run,tag=fuel] run function jam:ship/machines/result/fuel

# TODO: check for and then use energy, also check/use other things individually

# reset timer
tag @s[scores={timer=..0}] remove run
execute as @s[tag=!run] run scoreboard players operation @s timer = @s duration