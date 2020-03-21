scoreboard players operation @s tmp = @s oxygen
scoreboard players operation @s tmp *= $10 const
scoreboard players operation @s tmp /= @s oxygenMax

execute if score @s tmp matches 9.. run title @s actionbar [{"text":"++++++++++"}]
execute if score @s tmp matches 8 run title @s actionbar [{"text":"+++++++++-"}]
execute if score @s tmp matches 7 run title @s actionbar [{"text":"++++++++--"}]
execute if score @s tmp matches 6 run title @s actionbar [{"text":"+++++++---"}]
execute if score @s tmp matches 5 run title @s actionbar [{"text":"++++++----"}]
execute if score @s tmp matches 4 run title @s actionbar [{"text":"+++++-----"}]
execute if score @s tmp matches 3 run title @s actionbar [{"text":"++++------"}]
execute if score @s tmp matches 2 run title @s actionbar [{"text":"+++-------"}]
execute if score @s tmp matches 1 run title @s actionbar [{"text":"++--------"}]
execute if score @s tmp matches 0 run title @s actionbar [{"text":"+---------"}]

execute if score @s[tag=!oxygen_halfway] tmp matches 4 run title @s times 10 40 10
execute if score @s[tag=!oxygen_halfway] tmp matches 4 run title @s subtitle [{"text":"ℹ Oxygen 50% depleted ℹ","color":"gold"}]
execute if score @s[tag=!oxygen_halfway] tmp matches 4 run title @s title [""]
playsound minecraft:block.note_block.harp master @s[tag=!oxygen_halfway,scores={tmp=4}]
tag @s[tag=!oxygen_halfway,scores={tmp=4}] add oxygen_halfway

execute if score @s oxygen matches 1..20 run title @s actionbar [{"text":"Oxygen Critical!","color":"red"}]

title @s[scores={oxygen=1..20}] times 10 0 10
title @s[scores={oxygen=1..20}] subtitle [{"text":"⚠ Warning: Oxygen Levels Low! ⚠","color":"red"}]
title @s[scores={oxygen=1..20}] title [""]
playsound minecraft:entity.guardian.death master @s[scores={oxygen=1..20}]