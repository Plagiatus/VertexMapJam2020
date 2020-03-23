tp @s ^ ^ ^0.3 facing entity @e[tag=currentMob,type=#jam:aggro,distance=..10,limit=1]
execute at @s run tp ~ ~0.1 ~
particle dust 1 0.25 0 1
effect give @e[distance=..0.5,tag=currentMob,type=#jam:aggro,type=#jam:undead] instant_health 1 0 true
effect give @e[distance=..0.5,tag=currentMob,type=#jam:aggro,type=!#jam:undead] instant_damage 1 0 true
effect give @p[distance=..0.25,tag=currentMob] instant_damage 1 0 true
execute if entity @e[distance=..0.1,tag=currentMob,type=#jam:aggro] run kill @s
kill @e[type=spectral_arrow,nbt={inGround:1b}]
