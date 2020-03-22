scoreboard players add @s botOldRadius 1
tp @s ~ ~-0.5 ~
execute if entity @s[tag=2ndCast] run particle minecraft:heart ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=!2ndCast] run particle minecraft:flame ~ ~ ~ 0 0 0 1 0 force
execute if score @s botOldRadius matches ..16 positioned ^0.25 ^ ^ if block ~ ~ ~ air run function jam:drones/detect_wall
