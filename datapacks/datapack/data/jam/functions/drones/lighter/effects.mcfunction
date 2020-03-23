scoreboard players set @s botTimer 0

tag @s add currentBot
execute as @a at @s as @e[type=armor_stand,limit=1,tag=currentBot,distance=..10] if score @s botID = @p botID run tag @p add currentOwner
effect give @a[tag=currentOwner] speed 2 0 true
effect give @a[tag=currentOwner] jump_boost 2 2 true
execute at @a[tag=currentOwner] run effect give @e[type=#jam:aggro,distance=..50] glowing 2 0 true
