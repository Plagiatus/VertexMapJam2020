function jam:gravity/load
function jam:jetpack/load
function jam:drones/load
schedule function jam:second 1s replace

# gamerules
gamerule keepInventory true
gamerule fallDamage false 
gamerule doWeatherCycle false
gamerule doDaylightCycle false
time set midnight

# general
scoreboard objectives add tmp dummy
scoreboard objectives add const dummy
scoreboard objectives add random dummy
scoreboard objectives add counter dummy

#deaths
scoreboard objectives add totem dummy
scoreboard objectives add deaths deathCount

# Oxygen
scoreboard objectives add oxygen dummy
scoreboard objectives add oxygenMax dummy

# Machines
scoreboard objectives add timer dummy
scoreboard objectives add duration dummy

# Ship
scoreboard objectives add fuel dummy
scoreboard objectives add fuelMax dummy
scoreboard objectives add hydrogen dummy
scoreboard objectives add hydrogenMax dummy
scoreboard objectives add water dummy
scoreboard objectives add waterMax dummy
scoreboard objectives add water_split dummy
scoreboard objectives add door_outer dummy
scoreboard objectives add door_inner dummy

# constants
scoreboard players set $-1 const -1
scoreboard players set $2 const 2
scoreboard players set $4 const 4
scoreboard players set $6 const 6
scoreboard players set $7 const 7
scoreboard players set $9 const 9
scoreboard players set $6 const 6
scoreboard players set $10 const 10
scoreboard players set $16 const 16
scoreboard players set $26 const 26
scoreboard players set $27 const 27
scoreboard players set $57 const 57
scoreboard players set $60 const 60
scoreboard players set $64 const 64
scoreboard players set $75 const 75
scoreboard players set $135 const 135
scoreboard players set $160 const 160
scoreboard players set $265 const 160
scoreboard players set $360 const 360
scoreboard players set $32768 const 32768