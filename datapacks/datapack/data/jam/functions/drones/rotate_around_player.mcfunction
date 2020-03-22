scoreboard players set @s botOldRadius 0
scoreboard players set @s botNewRadius 0


tag @s remove 2ndCast
execute rotated ~10 ~ run function jam:drones/detect_wall
scoreboard players operation @s botNewRadius = @s botOldRadius
tag @s add 2ndCast

scoreboard players operation @s botOldRadius = @s botSmoother
scoreboard players operation @s botOldRadius *= §-1 const
function jam:drones/detect_wall

scoreboard players operation @s botNewRadius -= @s botOldRadius

execute if score @s botNewRadius matches ..-1 run scoreboard players remove @s botSmoother 1
execute if score @s botNewRadius matches 0 if score @s botSmoother matches ..-1 run scoreboard players add @s botSmoother 1
execute if score @s botNewRadius matches 0 if score @s botSmoother matches 1.. run scoreboard players remove @s botSmoother 1

execute if score @s botNewRadius matches 1.. run scoreboard players add @s botSmoother 1

#execute if block ^4 ^ ^ air positioned ^4 ^ ^ run tp @s ~ ~2 ~
