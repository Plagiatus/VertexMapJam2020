tag @s add currentBot
execute as @a at @s as @e[type=armor_stand,limit=1,tag=currentBot] if score @s botID = @p botID at @p rotated as @s positioned ~ ~2.5 ~ run function jam:drones/rotate_around_player
tag @s remove currentBot
execute at @s run tp @s ~ ~ ~ ~2 0
