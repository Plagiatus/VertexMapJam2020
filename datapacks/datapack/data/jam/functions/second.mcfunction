#re-schedule
schedule function jam:second 1s replace

#worldgeneration
execute as @e[tag=chunk_marker,tag=unchecked,limit=1] at @s run function jam:worldgen/check/chunk
execute as @e[type=area_effect_cloud,tag=chunk_marker,tag=!surrounded] at @s run function jam:worldgen/check/surrounding

# oxygen
execute as @a[tag=!in_ship] run function jam:oxygen/decrease

# machines/ship
function jam:ship/machines/shared
execute as @e[tag=hopper] at @s run function jam:ship/machines/all_hoppers
execute as @e[tag=ship] at @s run function jam:ship/main

# check jetpack capacity
execute as @a run function jam:jetpack/check_capacity