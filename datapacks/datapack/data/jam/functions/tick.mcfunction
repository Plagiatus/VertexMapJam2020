execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:gravity/main
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:jetpack/main
execute as @a[gamemode=!spectator] at @s run function jam:drones/main
execute as @e[tag=meteor_center,tag=unchecked,limit=1] at @s run function jam:worldgen/gen/meteor