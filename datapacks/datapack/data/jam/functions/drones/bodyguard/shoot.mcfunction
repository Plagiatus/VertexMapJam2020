tp @s ^ ^ ^0.3 facing entity @e[tag=currentMob,type=#jam:aggro,distance=..10,limit=1]
particle dust 1 0.25 0 1
execute if entity @e[distance=..0.1,tag=currentMob,type=#jam:aggro] run summon spectral_arrow ~ ~3 ~ {damage:2,Motion:[0.0d,-1.0d,0.0d]}
execute if entity @e[distance=..0.1,tag=currentMob,type=#jam:aggro] run kill @s
kill @e[type=spectral_arrow,nbt={inGround:1b}]
