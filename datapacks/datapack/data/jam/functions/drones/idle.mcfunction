execute as @e[tag=teleportieren] at @s as @e[tag=ziel] if score @s SCORE = @e[sort=nearest,limit=1] SCORE run teleport @e[sort=nearest,limit=1] @s
execute as @a at @s as @e[type=armor_stand,tag=bot] if score @s ID = @p ID at @p rotated as @s positioned ^4 ^ ^ run tp @s ~ ~2 ~
execute at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[tag=orange_bot] at @s positioned ~ ~1.65 ~ positioned ^ ^ ^-1 run particle dust 1.0 0.5 0.0 1.0
execute as @s[tag=cyan_bot] at @s positioned ~ ~1.65 ~ positioned ^ ^ ^-1 run particle dust 0.0 0.8 1.0 1.0
execute as @s[tag=green_bot] at @s positioned ~ ~1.65 ~ positioned ^ ^ ^-1 run particle dust 0.3 1.0 0.0 1.0
execute as @s[tag=pink_bot] at @s positioned ~ ~1.65 ~ positioned ^ ^ ^-1 run particle dust 1.0 0.5 0.5 1.0
