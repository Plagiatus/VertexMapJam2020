scoreboard players operation @s tmp = @e[tag=ship,distance=..15] fuelMax
scoreboard players operation @s tmp -= @e[tag=ship,distance=..15] fuel

scoreboard players operation @s tmp < $10 const
scoreboard players operation @s tmp < @s jetpack_fuel

scoreboard players operation @e[tag=ship,distance=..15] fuel += @s tmp
scoreboard players operation @s jetpack_fuel -= @s tmp

