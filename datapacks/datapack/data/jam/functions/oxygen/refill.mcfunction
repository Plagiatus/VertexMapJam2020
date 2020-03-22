scoreboard players operation @s tmp = @s oxygenMax
scoreboard players operation @s tmp -= @s oxygen

scoreboard players operation @s tmp < @e[tag=ship,limit=1,sort=nearest] oxygen
scoreboard players operation @e[tag=ship,limit=1,sort=nearest] oxygen -= @s tmp
scoreboard players operation @s oxygen += @s tmp

playsound minecraft:block.fire.extinguish master @s
tag @s remove oxygen_halfway

title @s times 10 40 10
title @s subtitle [{"text":"ℹ Oxygen refilled ℹ","color":"aqua"}]
title @s title [""]