function jam:ship/machines/result/increase_decrease
scoreboard players remove @e[tag=ship,distance=..10] hydrogen 10
scoreboard players add @e[tag=ship,distance=..10] fuel 100