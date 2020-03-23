# Bot modes:
# 0 = idle
# 1 = attack
# 2 = go to item
#
#
# 10 = return to owner


execute if entity @s[tag=orange_bot] run function jam:drones/bodyguard/main
execute if entity @s[tag=green_bot] run function jam:drones/collector/main
execute if entity @s[tag=pink_bot] run function jam:drones/healer/main
execute if entity @s[tag=cyan_bot] run function jam:drones/lighter/main
execute if entity @s[tag=golden_bot] unless entity @e[tag=ship,limit=1,distance=..50] run function jam:drones/miner/main

execute if entity @s[scores={botMode=0}] run function jam:drones/idle

execute positioned ~ ~0.8 ~ positioned ^ ^ ^-0.5 run function jam:drones/move_particles

data merge entity @s {Fire:200,Pose:{Head:[0.0f,0.1f,0.0f]}}
execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]
