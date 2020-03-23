execute if entity @s[type=item] run give @p light_blue_dye{CustomModelData:1b,Unbreakable:1b}
execute if entity @s[type=item] run kill @s

execute unless score @p botID matches 0.. as @p run function jam:drones/init_id

summon armor_stand ~ ~ ~ {Pose:{Head:[0.0f,0.1f,0.0f]},Marker:1,Invisible:1,NoGravity:1,Small:1,DisabledSlots:2096896,Tags:["bot","cyan_bot"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"ebb64032-c72a-40c8-86de-c7ad87634452",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWEwMDc2YWI5YTVjMGVkOGViZDA4YmIxODEzNzMyMWRmMGZkYzhhYmM3NDk5NDY1Y2MzMjIyMWNhMTkyYWQ0MyJ9fX0="}]}}}}]}
scoreboard players operation @e[type=armor_stand,limit=1,distance=..1,tag=cyan_bot] botID = @p botID
execute as @e[type=armor_stand,limit=1,distance=..1,tag=cyan_bot] run function jam:drones/reset_bot
