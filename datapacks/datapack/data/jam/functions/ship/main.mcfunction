function jam:ship/machines/tanks/update
execute positioned ~-1 ~ ~ run function jam:ship/machines/upgrader
execute if score @s water_split matches 1.. positioned ~ ~-6 ~-1 run function jam:ship/machines/water_split