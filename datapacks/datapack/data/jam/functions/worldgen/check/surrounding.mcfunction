execute positioned ~16 ~ ~ unless entity @e[distance=..1,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~-16 ~ ~ unless entity @e[distance=..1,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~ ~ ~16 unless entity @e[distance=..1,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}
execute positioned ~ ~ ~-16 unless entity @e[distance=..1,tag=chunk_marker,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","unchecked"]}

scoreboard players set @s tmp 0
execute positioned ~16 ~ ~ if entity @e[distance=..1,tag=chunk_marker,limit=1] run scoreboard players add @s tmp 1
execute positioned ~-16 ~ ~ if entity @e[distance=..1,tag=chunk_marker,limit=1] run scoreboard players add @s tmp 1
execute positioned ~ ~ ~16 if entity @e[distance=..1,tag=chunk_marker,limit=1] run scoreboard players add @s tmp 1
execute positioned ~ ~ ~-16 if entity @e[distance=..1,tag=chunk_marker,limit=1] run scoreboard players add @s tmp 1
tag @s[scores={tmp=4}] add surrounded