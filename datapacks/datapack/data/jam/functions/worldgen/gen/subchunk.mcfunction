scoreboard players operation $x tmp = $subchunk tmp
scoreboard players operation $y tmp = $x tmp
scoreboard players operation $y tmp /= $16 const
scoreboard players operation $z tmp = $y tmp
scoreboard players operation $z tmp /= $16 const

scoreboard players operation $x tmp %= $16 const
scoreboard players operation $y tmp %= $16 const
scoreboard players operation $z tmp %= $16 const

execute if score $x tmp matches ..-1 run scoreboard players operation $x tmp *= $-1 const
execute if score $y tmp matches ..-1 run scoreboard players operation $y tmp *= $-1 const
execute if score $z tmp matches ..-1 run scoreboard players operation $z tmp *= $-1 const

summon area_effect_cloud ~ ~ ~ {Tags:["meteor_center","needs_moving","unchecked"],Duration:1200}
execute as @e[tag=needs_moving] run function jam:worldgen/gen/move_center