effect clear @s[tag=used_jetpack] levitation
tag @s remove used_jetpack

execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..}] if block ~ ~-1.5 ~ air run function jam:jetpack/use

scoreboard players set @s jetpack_crouch 0