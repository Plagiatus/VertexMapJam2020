execute as @a[tag=!init] run function jam:init/player
execute as @a[tag=loading] at @s run function jam:init/starting_area
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:gravity/main
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function jam:jetpack/main
execute as @a at @s as @e[type=armor_stand,tag=bot] if score @s botID = @p botID at @s run function jam:drones/main
execute as @e[tag=meteor_center,tag=unchecked,limit=1] at @s run function jam:worldgen/gen/meteor
execute as @e[tag=meteor_center,tag=done,limit=1] at @s run function jam:worldgen/gen/meteor/prebuilt_cleanup
execute as @e[tag=meteor] at @s run function jam:worldgen/gen/meteor/generate_one
execute as @e[tag=ship] at @s run function jam:ship/tick
execute as @e[type=item,tag=!checked] run function jam:misc/items