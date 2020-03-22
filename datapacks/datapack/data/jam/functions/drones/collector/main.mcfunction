execute at @e[type=item,distance=..20,tag=!botcarries] run function jam:drones/collector/collect_item
execute unless entity @e[type=item,distance=..20] unless entity @s[scores={botMode=0}] run function jam:drones/return_to_owner
