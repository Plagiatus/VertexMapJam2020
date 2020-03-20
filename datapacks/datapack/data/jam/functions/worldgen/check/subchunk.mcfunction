scoreboard players operation $subchunk tmp /= $2 const
scoreboard players operation $tmp tmp = $subchunk tmp
scoreboard players operation $tmp tmp %= $2 const

execute unless score $tmp tmp matches 0 run function jam:worldgen/gen/subchunk
# tellraw @a ["",{"score":{"name":"$tmp","objective":"tmp"}}]

scoreboard players add $chunks tmp 1
execute if score $chunks tmp matches ..15 positioned ~ ~16 ~ run function jam:worldgen/check/subchunk