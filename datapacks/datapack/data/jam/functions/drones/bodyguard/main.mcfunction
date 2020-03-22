execute at @e[type=#jam:aggro,distance=..20,tag=!returnHome] run function jam:drones/bodyguard/attack
execute unless entity @e[type=#jam:aggro,distance=..20] unless entity @s[scores={botMode=0}] run function jam:drones/return_to_owner

execute unless entity @p[distance=5..50] run tag @s add returnHome
tag @s[tag=returnHome] add fastBot
execute if entity @p[distance=..5] run tag @s remove returnHome
tag @s[tag=!returnHome] remove fastBot
execute if entity @s[tag=returnHome] unless entity @s[scores={botMode=0}] run function jam:drones/return_to_owner
