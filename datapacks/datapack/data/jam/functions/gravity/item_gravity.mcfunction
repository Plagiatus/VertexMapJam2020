execute store result score @s tmp run data get entity @s Motion[1] 100
execute if entity @s[tag=!itemgravity] store result entity @s Motion[1] double 0.02 run scoreboard players get @s tmp
tag @s add itemGravity

execute store result entity @s Test double 100 run
#execute if score @s tmp matches ..-5 run data modify entity @s Motion[1] set value -0.05d
execute unless score @s tmp matches -5..30 store result entity @s Motion[1] double 0.005 run scoreboard players get @s tmp


#data merge entity @s {NoGravity:1}
