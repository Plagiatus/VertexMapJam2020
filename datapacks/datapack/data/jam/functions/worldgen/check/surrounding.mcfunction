execute positioned ~16 ~ ~ unless entity @e[dx=0,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~-16 ~ ~ unless entity @e[dx=0,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~ ~ ~16 unless entity @e[dx=0,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~ ~ ~-16 unless entity @e[dx=0,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}

tag @s add surrounding