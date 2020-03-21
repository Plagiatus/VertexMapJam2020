replaceitem block ~ ~ ~ container.0 structure_void
replaceitem block ~ ~ ~ container.2 structure_void
replaceitem block ~ ~ ~ container.3 structure_void
replaceitem block ~ ~ ~ container.4 structure_void
replaceitem block ~ ~ ~ container.5 structure_void

execute if block ~ ~ ~ dropper{Items:[{Slot:1b}]} run function jam:ship/machines/upgrader/display_recipe
execute if block ~ ~ ~ dropper{Items:[{Slot:6b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:gold_ingot"},{Slot:8b,id:"minecraft:diamond"}]} run function jam:ship/machines/upgrader/check_crafted