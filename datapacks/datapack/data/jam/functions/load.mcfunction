function jam:gravity/load
function jam:jetpack/load
schedule function jam:second 1s replace

# general
scoreboard objectives add tmp dummy
scoreboard objectives add const dummy
scoreboard objectives add random dummy
scoreboard objectives add counter dummy

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
scoreboard players set $64 const 64
scoreboard players set $160 const 160
