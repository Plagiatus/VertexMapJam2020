scoreboard players set @s botSmallestR 20

scoreboard players set @s botCurrentR 0
execute rotated 45 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 90 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 135 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 180 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 225 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 270 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
execute rotated 315 ~ run function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR

scoreboard players set @s botCurrentR 0
function jam:drones/detect_wall
scoreboard players operation @s botSmallestR < @s botCurrentR
scoreboard players remove @s botSmallestR 1
execute if score @s botSmallestR matches ..4 positioned ^1 ^ ^ run tp @s ~ ~-0.5 ~
