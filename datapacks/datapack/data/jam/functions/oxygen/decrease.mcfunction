# run every second

scoreboard players remove @s[scores={oxygen=1..}] oxygen 1

function jam:oxygen/display
execute if score @s oxygen matches ..0 run function jam:oxygen/damage