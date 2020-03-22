scoreboard players set @s botMode 0
scoreboard players set @s chargeShot 0
tag @s remove returnToOwner

scoreboard players set #number tmp 0
execute at @s as @e[type=armor_stand,tag=bot,scores={botMode=0}] if score @s botID = @e[type=armor_stand,tag=bot,distance=..0.1,limit=1] botID run scoreboard players add #number tmp 1

scoreboard players operation #radius tmp = $360 const
scoreboard players operation #radius tmp /= #number tmp
scoreboard players operation #radiusO tmp = #radius tmp

function jam:drones/place_uniformly
tag @e[type=armor_stand] remove processedBot
