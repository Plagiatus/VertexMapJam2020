#(max_value+158) / 9
scoreboard players operation @s max_level = @s max_jetpack_fuel
scoreboard players add @s max_level 158
scoreboard players operation #copy max_level = @s max_jetpack_fuel
scoreboard players operation #copy max_level %= $9 const
scoreboard players operation @s max_level /= $9 const
execute unless score #copy max_level matches 0 run scoreboard players add @s max_level 1

scoreboard players operation @s jetpack_fuel < @s max_jetpack_fuel
