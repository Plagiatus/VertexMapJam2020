execute store result score @s tmp run data get entity @s Motion[1] 100

execute store result entity @s Test double 100 run
#execute if score @s tmp matches ..-5 run data modify entity @s Motion[1] set value -0.05d
execute if score @s tmp matches ..-5 store result entity @s Motion[1] double 0.005 run scoreboard players get @s tmp
execute if score @s tmp matches 20.. store result entity @s Motion[1] double 0.0105 run scoreboard players get @s tmp


#data merge entity @s {NoGravity:1}
