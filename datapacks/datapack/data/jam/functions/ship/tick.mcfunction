execute positioned ~2 ~-6 ~-11 if entity @a[limit=1,dx=2,dy=4,dz=2] run function jam:ship/doors/particles
execute positioned ~3 ~-6 ~-7 unless score @s door_outer matches 0.. run function jam:ship/doors/inner
execute positioned ~3 ~-6 ~-13 unless score @s door_inner matches 0.. run function jam:ship/doors/outer

kill @e[tag=meteor_center,distance=..64]