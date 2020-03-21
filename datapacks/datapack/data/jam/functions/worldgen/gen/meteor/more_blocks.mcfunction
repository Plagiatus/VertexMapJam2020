scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~1 ~ ~ if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}
scoreboard players operation @s tmp /= $2 const
scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~-1 ~ ~ if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}
scoreboard players operation @s tmp /= $2 const
scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~ ~ ~1 if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}
scoreboard players operation @s tmp /= $2 const
scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~ ~ ~-1 if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}
scoreboard players operation @s tmp /= $2 const
scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~ ~1 ~ if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}
scoreboard players operation @s tmp /= $2 const
scoreboard players operation #tmp tmp = @s tmp
scoreboard players operation #tmp tmp %= $2 const
execute if score #tmp tmp matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ air unless entity @e[tag=meteor,dx=0] run summon area_effect_cloud ~ ~ ~ {Tags:["meteor"],Duration:200}