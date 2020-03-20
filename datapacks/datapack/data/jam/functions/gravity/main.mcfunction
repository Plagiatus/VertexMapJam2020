effect give @s minecraft:jump_boost 1 0 true
effect give @s minecraft:slow_falling 1 0 true

scoreboard players add @s[scores={slowJump=1..}] jumpTimer 1
effect give @s[scores={jumpTimer=1}] minecraft:levitation 1 1 true
effect clear @s[scores={jumpTimer=10}] minecraft:levitation
effect give @s[scores={jumpTimer=10}] minecraft:levitation 1 255 true
effect clear @s[scores={jumpTimer=20}] minecraft:levitation

execute as @s[scores={jumpTimer=20..}] unless block ~ ~-0.1 ~ air run function jam:gravity/landed