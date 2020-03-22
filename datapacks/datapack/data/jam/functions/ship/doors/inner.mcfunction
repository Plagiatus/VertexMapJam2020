scoreboard players add @s door_inner 0
tag @s remove opening
execute positioned ~-1 ~ ~-2 if entity @a[limit=1,dx=2,dy=3,dz=3] run tag @s add opening
scoreboard players add @s[tag=opening,scores={door_inner=..30}] door_inner 2
scoreboard players remove @s[scores={door_inner=0..}] door_inner 1
# scoreboard players set @s[scores={door_inner=31..}] door_inner 30

# execute if score @s door_inner matches 1 run fill ~-1 ~ ~ ~1 ~3 ~ air
execute if score @s door_inner matches 1 run fill ~-1 ~1 ~ ~1 ~3 ~ polished_diorite
execute if score @s door_inner matches 1 run fill ~-1 ~ ~ ~1 ~ ~ light_blue_terracotta
execute if score @s door_inner matches 1 run tag @s[tag=!opening] add door_sound
execute if score @s door_inner matches 10 run fill ~-1 ~ ~ ~1 ~ ~ air
execute if score @s door_inner matches 10 run fill ~-1 ~2 ~ ~1 ~3 ~ polished_diorite
execute if score @s door_inner matches 10 run fill ~-1 ~1 ~ ~1 ~1 ~ light_blue_terracotta
execute if score @s door_inner matches 10 run tag @s add door_sound
execute if score @s door_inner matches 20 run fill ~-1 ~ ~ ~1 ~1 ~ air
execute if score @s door_inner matches 20 run fill ~-1 ~3 ~ ~1 ~3 ~ polished_diorite
execute if score @s door_inner matches 20 run fill ~-1 ~2 ~ ~1 ~2 ~ light_blue_terracotta
execute if score @s door_inner matches 20 run tag @s add door_sound
execute if score @s door_inner matches 29 run fill ~-1 ~ ~ ~1 ~2 ~ air
execute if score @s door_inner matches 29 run fill ~-1 ~3 ~ ~1 ~3 ~ light_blue_terracotta
execute if score @s door_inner matches 29 run tag @s[tag=opening] add door_sound

execute as @s[tag=door_sound] run playsound minecraft:entity.shulker.open master @a ~ ~ ~ 1 0
execute as @s[tag=door_sound] run playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 1 0
tag @s remove door_sound

execute positioned ~-1 ~ ~-5 run tag @a[dx=2,dy=3,dz=4] add in_ship