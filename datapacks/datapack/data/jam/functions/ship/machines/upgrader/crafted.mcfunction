execute store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get #iron2 tmp
execute store result block ~ ~ ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get #gold2 tmp
execute store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get #diam2 tmp

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_pickaxe"}]} run replaceitem block ~ ~ ~ container.1 diamond_pickaxe
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_pickaxe"}]} run replaceitem block ~ ~ ~ container.1 iron_pickaxe
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_sword"}]} run replaceitem block ~ ~ ~ container.1 diamond_sword
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_sword"}]} run replaceitem block ~ ~ ~ container.1 iron_sword
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_shovel"}]} run replaceitem block ~ ~ ~ container.1 diamond_shovel
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_shovel"}]} run replaceitem block ~ ~ ~ container.1 iron_shovel
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:2}}]} run replaceitem block ~ ~ ~ container.1 golden_chestplate{level:3,capacity:5000,oxygen:2000}
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:1}}]} run replaceitem block ~ ~ ~ container.1 golden_chestplate{level:2,capacity:1000,oxygen:300}