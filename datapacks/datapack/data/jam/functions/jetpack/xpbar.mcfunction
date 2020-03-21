execute store result score @s tmp run xp query @s points
scoreboard players operation @s tmp -= @s jetpack_fuel

execute if score @s tmp matches 500.. run xp add @s -20 points
execute if score @s tmp matches 200..499 run xp add @s -10 points
execute if score @s tmp matches 30..199 run xp add @s -5 points
execute if score @s tmp matches 1..29 run xp add @s -1 points


execute if score @s tmp matches -29..-1 run xp add @s 1 points
execute if score @s tmp matches -199..-30 run xp add @s 5 points
execute if score @s tmp matches -499..-200 run xp add @s 10 points
execute if score @s tmp matches ..-500 run xp add @s 20 points
