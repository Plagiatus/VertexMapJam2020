summon area_effect_cloud ~ 0 ~ {Duration:2000000000,Tags:["chunk_marker","new_chunk_marker"]}

execute as @e[type=area_effect_cloud,tag=new_chunk_marker] run function jam:worldgen/move_one