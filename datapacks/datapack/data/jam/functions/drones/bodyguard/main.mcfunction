execute at @e[type=#jam:aggro,distance=..20] run function jam:drones/bodyguard/attack
execute unless entity @e[type=#jam:aggro,distance=..20] unless entity @s[scores={botMode=0}] run function jam:drones/return_to_owner
