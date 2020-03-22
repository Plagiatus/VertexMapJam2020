execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:gravity/main
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:jetpack/main
execute as @e[type=armor_stand,tag=bot] at @s if score @s ID = @p ID at @s run function jam:drones/main
execute as @e[tag=meteor_center,tag=unchecked,limit=1] at @s run function jam:worldgen/gen/meteor
execute as @e[tag=meteor_center,tag=done,limit=1] at @s run function jam:worldgen/gen/meteor/prebuilt_cleanup
execute as @e[tag=meteor] at @s run function jam:worldgen/gen/meteor/generate_one
execute as @e[tag=ship] at @s run function jam:ship/tick