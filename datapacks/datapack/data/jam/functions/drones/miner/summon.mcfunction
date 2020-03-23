execute if entity @s[type=item] run give @p carrot_on_a_stick{CustomModelData:1b,Unbreakable:1b}
execute if entity @s[type=item] run kill @s

execute unless score @p botID matches 0.. as @p run function jam:drones/init_id

summon armor_stand ~ ~ ~ {Pose:{Head:[0.0f,0.1f,0.0f]},Marker:1,Invisible:1,NoGravity:1,Small:1,DisabledSlots:2096896,Tags:["bot","golden_bot"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"4a5002e9-de71-46d6-8549-f29ced6f4bf6",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhmZTU5MzViMmIzMjAyOWZiODY2ZTFhOTY2ODNmOWI4MDhkMzVkZDljZDNhNzY5NDU1MzRkYmQwZWM0MWNhOSJ9fX0="}]}}}}]}
scoreboard players operation @e[type=armor_stand,limit=1,distance=..1,tag=golden_bot] botID = @p botID
execute as @e[type=armor_stand,limit=1,distance=..1,tag=golden_bot] run function jam:drones/reset_bot
