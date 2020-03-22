scoreboard players set #iron tmp -1
scoreboard players set #gold tmp -1
scoreboard players set #diam tmp -1

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_pickaxe"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_pickaxe"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_sword"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_sword"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_shovel"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_shovel"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:1}}]} run function jam:ship/machines/upgrader/recipes/jetpack_1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:2}}]} run function jam:ship/machines/upgrader/recipes/jetpack_2

execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. run replaceitem block ~ ~ ~ container.3 structure_void{display:{Name:'{"text":" "}'},HideFlags:63,CustomModelData:10}
execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. run replaceitem block ~ ~ ~ container.4 structure_void{display:{Name:'{"text":" "}'},HideFlags:63,CustomModelData:11}
execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. run replaceitem block ~ ~ ~ container.5 structure_void{display:{Name:'{"text":" "}'},HideFlags:63,CustomModelData:12}

execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #iron tmp
execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get #gold tmp
execute if score #iron tmp matches 0.. if score #gold tmp matches 0.. if score #diam tmp matches 0.. store result block ~ ~ ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get #diam tmp

# tellraw @a [{"score":{"name":"#iron","objective":"tmp"}}, " ",{"score":{"name":"#gold","objective":"tmp"}}, " ", {"score":{"name":"#diam","objective":"tmp"}}]
