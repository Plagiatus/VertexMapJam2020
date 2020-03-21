execute store result score @s random run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players operation @s tmp = @s random
scoreboard players operation @s tmp %= $16 const
execute if score @s counter matches 1.. run function jam:worldgen/gen/meteor/setblock

scoreboard players operation @s tmp = @s random
scoreboard players operation @s tmp /= $16 const
scoreboard players operation @s tmp %= $64 const
execute if score @s counter matches 1.. run function jam:worldgen/gen/meteor/more_blocks

scoreboard players operation #tmp counter = @s counter
scoreboard players remove #tmp counter 1
execute if score @s counter matches 1.. as @e[tag=meteor,distance=..1.1] run scoreboard players operation @s counter = #tmp counter

kill @s