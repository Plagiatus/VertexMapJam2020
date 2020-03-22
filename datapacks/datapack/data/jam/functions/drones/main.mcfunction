# Bot modes:
# 0 = idle
# 1 = attack
# 2 = go to item
# 
#
# 10 = return to owner



execute if entity @s[tag=bodyguardBot] run function jam:drones/bodyguard/main
execute if entity @s[tag=collectorBot] run function jam:drones/collector/main

execute if entity @s[scores={botMode=0}] run function jam:drones/idle
