execute store result score $x tmp run data get entity @s Pos[0] 10
execute store result score $z tmp run data get entity @s Pos[2] 10

scoreboard players operation $tmp tmp = $x tmp
scoreboard players operation $tmp tmp %= $160 const
scoreboard players operation $x tmp -= $tmp tmp
execute store result entity @s Pos[0] double 0.1 run scoreboard players add $x tmp 5
scoreboard players operation $tmp tmp = $z tmp
scoreboard players operation $tmp tmp %= $160 const
scoreboard players operation $z tmp -= $tmp tmp
execute store result entity @s Pos[2] double 0.1 run scoreboard players add $z tmp 5 

tag @s remove new_chunk_marker