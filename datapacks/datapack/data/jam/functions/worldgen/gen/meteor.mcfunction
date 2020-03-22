execute store result score @s tmp run data get entity @s UUIDLeast 0.00000000023283064365386962890625

execute if score @s tmp matches ..-1 run scoreboard players operation @s tmp *= $-1 const

scoreboard players operation #prebuilt tmp = @s tmp
scoreboard players operation #prebuilt tmp %= $2 const

execute if score #prebuilt tmp matches 0 run function jam:worldgen/gen/meteor/generate
execute unless score #prebuilt tmp matches 0 run function jam:worldgen/gen/meteor/prebuilt