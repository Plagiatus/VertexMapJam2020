scoreboard players operation #meteor tmp = @s tmp
scoreboard players operation #meteor tmp /= $2 meteor
scoreboard players operation #meteor tmp %= $2 meteor

execute if score #meteor tmp matches 0 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor_0",posX:-1,posY:-1,posZ:-1,integrity:0.95f}
execute if score #meteor tmp matches 1 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor_1",posX:-1,posY:-1,posZ:-1,integrity:0.95f}

setblock ~ ~1 ~ redstone_block