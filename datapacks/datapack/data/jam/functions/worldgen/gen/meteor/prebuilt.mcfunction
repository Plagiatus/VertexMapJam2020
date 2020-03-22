scoreboard players operation #meteor tmp = @s tmp
scoreboard players operation #meteor tmp /= $2 const
scoreboard players operation #meteor tmp %= $26 const

execute if score #meteor tmp matches 0 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor1",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 1 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor2",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 2 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor3",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 3 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor4",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 4 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor5",posX:-6,posY:-6,posZ:-6,integrity:0.95f}

execute if score #meteor tmp matches 5 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor6",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 6 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor7",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 7 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor8",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 8 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor9",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 9 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor10",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 10 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor11",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 11 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor12",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 12 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor13",posX:-4,posY:-4,posZ:-4,integrity:0.95f}

execute if score #meteor tmp matches 13 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor14",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
execute if score #meteor tmp matches 14 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor15",posX:-2,posY:-2,posZ:-2,integrity:0.95f}

execute if score #meteor tmp matches 15 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor16",posX:-13,posY:-13,posZ:-13,integrity:0.95f}

execute if score #meteor tmp matches 16 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor17",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 17 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor18",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 18 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor19",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 19 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor20",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 20 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor21",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 21 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor22",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 22 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor23",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 23 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor24",posX:-4,posY:-4,posZ:-4,integrity:0.95f}

execute if score #meteor tmp matches 24 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor25",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
execute if score #meteor tmp matches 25 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor26",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
# execute if score #meteor tmp matches 26 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor27",posX:-2,posY:-2,posZ:-2,integrity:0.95f}

setblock ~1 ~ ~ redstone_block
tag @s add done