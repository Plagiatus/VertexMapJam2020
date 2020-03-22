execute if score @s hydrogen matches ..10 run title @a[tag=in_ship,distance=..20] actionbar [{"text":"Hydrogen level is low!","color":"gold"}]
execute if score @s water matches ..10 run title @a[tag=in_ship,distance=..20] actionbar [{"text":"Water level is low!","color":"gold"}]
execute if score @s oxygen matches ..10 run title @a[tag=in_ship,distance=..20] actionbar [{"text":"Oxygen level is low!","color":"red"}]
execute if score @s fuel matches ..100 run title @a[tag=in_ship,distance=..20] actionbar [{"text":"Fuel level is low!","color":"red"}]