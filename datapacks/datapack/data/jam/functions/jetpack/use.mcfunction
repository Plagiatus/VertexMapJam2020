scoreboard players remove @s jetpack_fuel 1
effect give @s levitation 1 7 true
playsound minecraft:ui.cartography_table.take_result master @a ~ ~ ~ 1 0.5
execute positioned ^0.2 ^ ^-0.5 rotated ~ 0 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0 1
execute positioned ^-0.2 ^ ^-0.5 rotated ~ 0 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0 1
tag @s add used_jetpack
