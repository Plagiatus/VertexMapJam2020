execute unless entity @s[scores={botID=0..}] run function jam:drones/init_id

summon armor_stand ~ ~ ~ {Pose:{Head:[0.0f,0.1f,0.0f]},Marker:1,Invisible:1,NoGravity:1,Small:1,DisabledSlots:2096896,Tags:["bot","green_bot"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"02e1992d-3238-474a-a478-4a8aae9578a4",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjMxNDI1NDllNTNlZmVmMDIzYjg1NzhlYzU2MmNjZjM0NTRiN2E5Zjg4ODgwM2I4OGQ1Mzc5MjI4ZTJhMzdhYSJ9fX0="}]}}}}]}
scoreboard players operation @e[type=armor_stand,limit=1,distance=..1,tag=green_bot] botID = @s botID
execute as @e[type=armor_stand,limit=1,distance=..1,tag=green_bot] run function jam:drones/reset_bot
