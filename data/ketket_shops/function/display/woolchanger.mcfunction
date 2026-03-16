scoreboard players add @s wool_dye 1

execute if score @s wool_dye matches 1 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:white_wool"
execute if score @s wool_dye matches 2 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:light_gray_wool"
execute if score @s wool_dye matches 3 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:gray_wool"
execute if score @s wool_dye matches 4 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:black_wool"
execute if score @s wool_dye matches 5 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:brown_wool"
execute if score @s wool_dye matches 6 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:red_wool"
execute if score @s wool_dye matches 7 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:orange_wool"
execute if score @s wool_dye matches 8 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:yellow_wool"
execute if score @s wool_dye matches 9 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:lime_wool"
execute if score @s wool_dye matches 10 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:green_wool"
execute if score @s wool_dye matches 11 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:cyan_wool"
execute if score @s wool_dye matches 12 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:light_blue_wool"
execute if score @s wool_dye matches 13 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:blue_wool"
execute if score @s wool_dye matches 14 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:purple_wool"
execute if score @s wool_dye matches 15 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:magenta_wool"
execute if score @s wool_dye matches 16 run data modify entity @e[type=block_display,sort=nearest,limit=1,tag=wool] block_state.Name set value "minecraft:air"
execute if score @s wool_dye matches 16 run scoreboard players set @s wool_dye 0