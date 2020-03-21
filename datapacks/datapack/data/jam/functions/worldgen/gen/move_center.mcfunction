execute store result score #x tmp run data get entity @s Pos[0] 1
execute store result score #y tmp run data get entity @s Pos[1] 1
execute store result score #z tmp run data get entity @s Pos[2] 1

execute store result entity @s Pos[0] double 1 run scoreboard players operation #x tmp += $x tmp
execute store result entity @s Pos[1] double 1 run scoreboard players operation #y tmp += $y tmp
execute store result entity @s Pos[2] double 1 run scoreboard players operation #z tmp += $z tmp

execute at @s run setblock ~ ~ ~ stone

tag @s remove needs_moving