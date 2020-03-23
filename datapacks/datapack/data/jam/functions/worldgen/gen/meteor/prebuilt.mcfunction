scoreboard players operation #meteor tmp = @s tmp
scoreboard players operation #meteor tmp /= $2 const
scoreboard players operation #meteor tmp %= $135 const

#meteorite
execute if score #meteor tmp matches 1..5 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor1",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 6..10 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor2",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 11..15 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor3",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 16..20 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor4",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 21..25 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor5",posX:-6,posY:-6,posZ:-6,integrity:0.95f}
execute if score #meteor tmp matches 26..30 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor6",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 31..35 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor7",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 36..40 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor8",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 41..45 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor9",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 46..50 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor10",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 51..55 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor11",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 56..60 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor12",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 61..65 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor13",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 66..70 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor14",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
execute if score #meteor tmp matches 71..75 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor15",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
execute if score #meteor tmp matches 76..80 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor16",posX:-13,posY:-13,posZ:-13,integrity:0.95f}
execute if score #meteor tmp matches 81..85 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor17",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 86..90 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor18",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 91..95 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor19",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 96..100 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor20",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 101..105 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor21",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 106..110 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor22",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 111..115 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor23",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 116..120 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor24",posX:-4,posY:-4,posZ:-4,integrity:0.95f}
execute if score #meteor tmp matches 121..125 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor25",posX:-2,posY:-2,posZ:-2,integrity:0.95f}
execute if score #meteor tmp matches 126..130 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:meteor26",posX:-2,posY:-2,posZ:-2,integrity:0.95f}

# dungeon
execute if score #meteor tmp matches 131 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:structure1",posX:-13,posY:-14,posZ:-13,integrity:1f}
execute if score #meteor tmp matches 132 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:structure2",posX:-9,posY:-9,posZ:-10,integrity:1f}
execute if score #meteor tmp matches 133 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:structure3",posX:-8,posY:-9,posZ:-8,integrity:1f}
execute if score #meteor tmp matches 134 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",name:"jam:structure4",posX:-14,posY:-11,posZ:-8,integrity:1f}

setblock ~1 ~ ~ redstone_block
tag @s add done