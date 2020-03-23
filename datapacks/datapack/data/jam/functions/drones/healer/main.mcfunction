execute at @s[scores={botTimer=0}] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["botHeal"]}
execute at @s[scores={botTimer=1200..}] run scoreboard players set @s botTimer 0
scoreboard players add @s botTimer 1


tag @s add currentBot
execute as @a at @s as @e[type=armor_stand,limit=1,tag=currentBot,distance=..10] if score @s botID = @p botID run tag @p add currentOwner
effect give @a[tag=currentOwner] health_boost 2 1 true

execute as @e[type=area_effect_cloud,tag=botHeal] at @s run function jam:drones/healer/shoot
tag @s remove currentBot
tag @a remove currentOwner
