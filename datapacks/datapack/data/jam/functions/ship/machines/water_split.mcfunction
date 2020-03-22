execute unless score @s duration = @s duration run scoreboard players set @s duration 6

scoreboard players remove @s timer 1
scoreboard players operation @s[scores={water_split=0}] timer = @s duration
scoreboard players operation @s[scores={water=..9}] timer = @s duration
scoreboard players operation #h2 tmp = @s hydrogenMax
scoreboard players operation #h2 tmp -= @s hydrogen
scoreboard players operation #o2 tmp = @s oxygenMax
scoreboard players operation #o2 tmp -= @s oxygen
execute if score #o2 tmp matches ..9 if score #h2 tmp matches ..19 run scoreboard players operation @s timer = @s duration

scoreboard players remove @s[scores={timer=0}] water 10
scoreboard players add @s[scores={timer=0}] hydrogen 20
scoreboard players add @s[scores={timer=0}] oxygen 10
scoreboard players remove @s[scores={timer=0}] water_split 1

scoreboard players operation @s[scores={timer=..0}] timer = @s duration

data merge block ~ ~ ~ {Text2:'{"score":{"name":"@e[tag=ship,distance=..10,limit=1]","objective":"water_split"},"color":"white"}'}