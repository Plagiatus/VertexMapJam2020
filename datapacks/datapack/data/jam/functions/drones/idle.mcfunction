execute as @a at @s as @e[type=armor_stand,tag=bot] if score @s ID = @p ID at @p rotated as @s positioned ~ ~2.5 ~ run function jam:drones/rotate_around_player
execute at @s run tp @s ~ ~ ~ ~2 ~


execute at @s positioned ~ ~0.8 ~ positioned ^ ^ ^-0.5 run function jam:drones/move_particles
