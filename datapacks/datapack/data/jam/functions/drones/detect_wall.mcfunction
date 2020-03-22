scoreboard players add @s botCurrentR 1
tp @s ~ ~-0.5 ~
execute if score @s botCurrentR <= @s botSmallestR positioned ^0.2 ^ ^ if block ~ ~ ~ air run function jam:drones/detect_wall
