execute if entity @s[type=item] run give @p pink_dye{CustomModelData:1b,Unbreakable:1b}
execute if entity @s[type=item] run kill @s

execute unless score @p botID matches 0.. as @p run function jam:drones/init_id

summon armor_stand ~ ~ ~ {Pose:{Head:[0.0f,0.1f,0.0f]},Marker:1,Invisible:1,NoGravity:1,Small:1,DisabledSlots:2096896,Tags:["bot","pink_bot"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"84c126fe-3d67-4e4e-84ec-ae8051ab7b94",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQzNDNhYjI1ZjJiNjdlN2YzZGQxMjllYzM3YjZkMGQxNjcwMjNiNTdiYWQ3OTRkNTM4NmJkODBjZmI2NTU2ZiJ9fX0="}]}}}}]}
scoreboard players operation @e[type=armor_stand,limit=1,distance=..1,tag=pink_bot] botID = @p botID
execute as @e[type=armor_stand,limit=1,distance=..1,tag=pink_bot] run function jam:drones/reset_bot
