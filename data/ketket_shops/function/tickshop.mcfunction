##> menu tick
execute as @s[tag=menuon,tag=playershop] run return run function ketket_shops:menu/placemenu

execute as @s[tag=playershop,tag=main,nbt={interaction:{}}] at @s run function ketket_shops:click/right
execute as @s[tag=playershop,tag=main,nbt={attack:{}}] at @s run function ketket_shops:click/left

data remove entity @s interaction
data remove entity @s attack

