execute store result score @s tmp run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if score @s tmp matches 0 run function jam:ship/machines/result/first_item
execute if score @s tmp matches 1.. store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players add @s tmp 1

execute store result score @s tmp run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players remove @s tmp 1