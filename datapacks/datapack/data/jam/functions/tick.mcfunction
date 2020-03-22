execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:gravity/main
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:jetpack/main
execute as @a at @s as @e[type=armor_stand,tag=bot] if score @s botID = @p botID at @s run function jam:drones/main
execute as @e[tag=meteor_center,tag=unchecked,limit=1] at @s run function jam:worldgen/gen/meteor
execute as @e[tag=meteor] at @s run function jam:worldgen/gen/meteor/generate_one
execute as @e[tag=ship] at @s run function jam:ship/tick
