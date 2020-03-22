scoreboard players set @s botMode 2
execute unless entity @e[type=item,distance=..20,sort=nearest,tag=currentItem] run tag @e[type=item,distance=..0.1,limit=1] add currentItem

execute at @s if entity @e[type=item,distance=..0.1,sort=nearest,tag=currentItem] run tag @s add returnToOwner
execute at @s[tag=!returnToOwner] run tp @s ^ ^ ^0.2 facing entity @e[type=item,distance=..20,tag=currentItem,limit=1]

#Tp item to bot
execute as @s[tag=returnToOwner] at @s positioned ~ ~1 ~ run tp @e[type=item,tag=currentItem,distance=..2,limit=1] ~ ~ ~
execute as @s[tag=returnToOwner] at @s run data merge entity @e[type=item,tag=currentItem,distance=..2,limit=1] {NoGravity:1}
#Tp bot to player
execute at @s[tag=returnToOwner] run function jam:drones/return_to_owner
