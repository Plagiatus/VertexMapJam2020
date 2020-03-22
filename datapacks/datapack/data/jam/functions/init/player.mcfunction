scoreboard players set @s oxygen 60
scoreboard players set @s oxygenMax 60
scoreboard players set @s timer 0
scoreboard players set @s totem 0

execute store result score @s tmp run data get entity @s UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation #x tmp = @s tmp
scoreboard players operation #x tmp %= $32768 const
scoreboard players operation #z tmp = @s tmp
scoreboard players operation #z tmp /= $32768 const
scoreboard players operation #z tmp %= $32768 const

setblock ~ 255 ~ minecraft:end_gateway{ExactTeleport:1b,ExitPortal:{X:0,Y:128,Z:0},Age:1000}
execute store result block ~ 255 ~ ExitPortal.X int 1 run scoreboard players get #x tmp
execute store result block ~ 255 ~ ExitPortal.Z int 1 run scoreboard players get #z tmp
tp @s ~ 255 ~

effect give @s blindness 10 0 true
effect give @s resistance 10 5 true
title @s times 10 180 10
title @s title [{"text":"Loading...","color":"gold"}]
tellraw @s [{"text":"We're preparing everything for your experience, please stand by...","color":"dark_green"}]

gamemode creative @s

tag @s add in_ship
tag @s add init
tag @s add loading

gamerule keepInventory true
