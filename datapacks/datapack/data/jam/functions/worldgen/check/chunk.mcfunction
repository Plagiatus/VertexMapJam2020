execute store result score @s tmp run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set $chunks tmp 0
scoreboard players operation $subchunk tmp = @s tmp

function jam:worldgen/check/subchunk

tag @s remove unchecked