execute store result score @s tmp run data get entity @s Inventory[{Slot:102b}].tag.capacity
execute unless score @s tmp = @s max_jetpack_fuel run function jam:jetpack/update_capacity