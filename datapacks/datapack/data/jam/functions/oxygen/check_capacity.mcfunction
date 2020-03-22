execute store result score @s tmp run data get entity @s Inventory[{Slot:102b}].tag.oxygen
execute unless score @s tmp = @s oxygenMax run scoreboard players operation @s oxygen < @s tmp
execute unless score @s tmp = @s oxygenMax run scoreboard players operation @s oxygenMax = @s tmp