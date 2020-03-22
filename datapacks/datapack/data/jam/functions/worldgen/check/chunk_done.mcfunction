execute unless entity @e[tag=meteor_center,dx=15,dy=255,dz=15,limit=1] run tag @s add removed_roof
execute as @s[tag=removed_roof] run fill ~ 254 ~ ~15 254 ~15 air