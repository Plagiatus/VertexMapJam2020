execute as @e[tag=teleportieren] at @s as @e[tag=ziel] if score @s SCORE = @e[sort=nearest,limit=1] SCORE run teleport @e[sort=nearest,limit=1] @s
execute as @a at @s as @e[type=armor_stand,tag=bot] if score @s ID = @p ID at @p rotated as @s positioned ^4 ^ ^ run tp @s ~ ~2 ~
execute at @s run tp @s ~ ~ ~ ~2 ~


execute at @s positioned ~ ~0.8 ~ positioned ^ ^ ^-0.5 run function jam:drones/move_particles
