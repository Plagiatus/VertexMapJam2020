execute store result score @s random run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players operation @s counter = @s random
scoreboard players operation @s counter %= $10 const

function jam:worldgen/gen/meteor/generate_one