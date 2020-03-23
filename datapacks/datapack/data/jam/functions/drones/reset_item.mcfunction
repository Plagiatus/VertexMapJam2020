execute if entity @s[nbt={Item:{id:"minecraft:pink_dye"}}] at @p as @e[type=armor_stand,tag=pink_bot,limit=1,distance=..7] if score @s botID = @p botID run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:lime_dye"}}] at @p as @e[type=armor_stand,tag=green_bot,limit=1,distance=..7] if score @s botID = @p botID run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:light_blue_dye"}}] at @p as @e[type=armor_stand,tag=cyan_bot,limit=1,distance=..7] if score @s botID = @p botID run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:orange_dye"}}] at @p as @e[type=armor_stand,tag=orange_bot,limit=1,distance=..7] if score @s botID = @p botID run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @p as @e[type=armor_stand,tag=golden_bot,limit=1,distance=..7] if score @s botID = @p botID run kill @s

execute if entity @s[nbt={Item:{id:"minecraft:pink_dye"}}] run give @p pink_dye{CustomModelData:0b,Unbreakable:1b}
execute if entity @s[nbt={Item:{id:"minecraft:lime_dye"}}] run give @p lime_dye{CustomModelData:0b,Unbreakable:1b}
execute if entity @s[nbt={Item:{id:"minecraft:light_blue_dye"}}] run give @p light_blue_dye{CustomModelData:0b,Unbreakable:1b}
execute if entity @s[nbt={Item:{id:"minecraft:orange_dye"}}] run give @p orange_dye{CustomModelData:0b,Unbreakable:1b}
execute if entity @s[nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run give @p carrot_on_a_stick{CustomModelData:0b,Unbreakable:1b}

kill @s
function jam:drones/reset_bot
