execute store result score #iron2 tmp run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute store result score #gold2 tmp run data get block ~ ~ ~ Items[{Slot:7b}].Count
execute store result score #diam2 tmp run data get block ~ ~ ~ Items[{Slot:8b}].Count

scoreboard players set #iron tmp 100
scoreboard players set #gold tmp 100
scoreboard players set #diam tmp 100

# tellraw @a [{"score":{"name":"#iron2","objective":"tmp"}}, " ",{"score":{"name":"#gold2","objective":"tmp"}}, " ", {"score":{"name":"#diam2","objective":"tmp"}}]

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_pickaxe"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_pickaxe"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_sword"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_sword"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:stone_shovel"}]} run function jam:ship/machines/upgrader/recipes/stone
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_shovel"}]} run function jam:ship/machines/upgrader/recipes/iron
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:1}}]} run function jam:ship/machines/upgrader/recipes/jetpack_1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:golden_chestplate",tag:{level:2}}]} run function jam:ship/machines/upgrader/recipes/jetpack_2

scoreboard players operation #iron2 tmp -= #iron tmp
scoreboard players operation #gold2 tmp -= #gold tmp
scoreboard players operation #diam2 tmp -= #diam tmp

execute if score #iron2 tmp matches 0.. if score #gold2 tmp matches 0.. if score #diam2 tmp matches 0.. run function jam:ship/machines/upgrader/crafted