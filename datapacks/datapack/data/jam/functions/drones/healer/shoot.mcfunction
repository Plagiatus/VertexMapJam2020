tp @s ^ ^ ^0.5 facing entity @p[tag=currentOwner,distance=..20]
execute at @s run tp ~ ~0.1 ~
particle dust 1 0.0 0.8 1
execute at @s as @p[tag=currentOwner,distance=..0.5] run effect give @s regeneration 5 2
execute if entity @p[tag=currentOwner,distance=..0.5] run kill @s
