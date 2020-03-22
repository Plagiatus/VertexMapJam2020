effect clear @s[tag=used_jetpack] levitation
tag @s remove used_jetpack

execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..}] unless block ~0.3 ~-1.5 ~0.3 air run tag @s add crouchOnBlock
execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..}] unless block ~-0.3 ~-1.5 ~0.3 air run tag @s add crouchOnBlock
execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..}] unless block ~0.3 ~-1.5 ~-0.3 air run tag @s add crouchOnBlock
execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..}] unless block ~-0.3 ~-1.5 ~-0.3 air run tag @s add crouchOnBlock
execute as @s[scores={jetpack_fuel=1..,jetpack_crouch=1..},tag=!crouchOnBlock] run function jam:jetpack/use

function jam:jetpack/xpbar
function jam:jetpack/levels

execute if block ~ ~ ~ light_weighted_pressure_plate unless score @s jetpack_crouch matches 1.. if score @s jetpack_fuel <= @s max_jetpack_fuel if score @e[tag=ship,distance=..15,limit=1] fuel matches 1.. run function jam:jetpack/refill
execute if block ~ ~ ~ light_weighted_pressure_plate if score @s jetpack_crouch matches 1.. if score @s jetpack_fuel <= @s max_jetpack_fuel if score @e[tag=ship,distance=..15,limit=1] fuel matches 1.. run function jam:jetpack/backfill

tag @s remove crouchOnBlock
scoreboard players set @s jetpack_crouch 0
