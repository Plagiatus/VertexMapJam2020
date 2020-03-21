scoreboard players operation @s oxygen = @s oxygenMax
playsound minecraft:block.fire.extinguish master @s
tag @s remove oxygen_halfway

title @s times 10 40 10
title @s subtitle [{"text":"ℹ Oxygen refilled ℹ","color":"aqua"}]
title @s title [""]