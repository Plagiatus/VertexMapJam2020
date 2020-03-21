execute store result score @s tmp run xp query @s levels
scoreboard players operation @s tmp -= @s max_level

execute if score @s tmp matches 100.. run xp add @s -100 levels
execute if score @s tmp matches 10..99 run xp add @s -10 levels
execute if score @s tmp matches 1..9 run xp add @s -1 levels

execute if score @s tmp matches -9..-1 run xp add @s 1 levels
execute if score @s tmp matches -99..-10 run xp add @s 10 levels
execute if score @s tmp matches ..-100 run xp add @s 100 levels
