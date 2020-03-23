execute as @s[nbt={Item:{id:"minecraft:orange_dye",Count:1b}}] unless entity @s[nbt={Item:{tag:{CustomModelData:1b}}}] run function jam:drones/bodyguard/summon
execute as @s[nbt={Item:{id:"minecraft:pink_dye",Count:1b}}] unless entity @s[nbt={Item:{tag:{CustomModelData:1b}}}] run function jam:drones/healer/summon
execute as @s[nbt={Item:{id:"minecraft:lime_dye",Count:1b}}] unless entity @s[nbt={Item:{tag:{CustomModelData:1b}}}] run function jam:drones/collector/summon
execute as @s[nbt={Item:{id:"minecraft:light_blue_dye",Count:1b}}] unless entity @s[nbt={Item:{tag:{CustomModelData:1b}}}] run function jam:drones/lighter/summon
execute as @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] unless entity @s[nbt={Item:{tag:{CustomModelData:1b}}}] run function jam:drones/miner/summon

execute as @s[nbt={Item:{id:"minecraft:orange_dye",tag:{CustomModelData:1b}}}] at @s run function jam:drones/reset_item
execute as @s[nbt={Item:{id:"minecraft:pink_dye",tag:{CustomModelData:1b}}}] at @s run function jam:drones/reset_item
execute as @s[nbt={Item:{id:"minecraft:lime_dye",tag:{CustomModelData:1b}}}] at @s run function jam:drones/reset_item
execute as @s[nbt={Item:{id:"minecraft:light_blue_dye",tag:{CustomModelData:1b}}}] at @s run function jam:drones/reset_item
execute as @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1b}}}] at @s run function jam:drones/reset_item
