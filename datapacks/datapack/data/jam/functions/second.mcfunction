schedule function jam:second 1s replace

execute as @e[tag=chunk_marker,tag=unchecked,limit=1] at @s run function jam:worldgen/check/chunk
execute as @e[type=area_effect_cloud,tag=chunk_marker,tag=!surrounded] at @s run function jam:worldgen/check/surrounding
execute as @a[tag=!in_ship] run function jam:oxygen/decrease