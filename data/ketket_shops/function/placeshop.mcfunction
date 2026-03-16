execute as @s[y_rotation=136..225] at @s run function ketket_shops:tickfunc/direction/north
execute as @s[y_rotation=-134..-45] at @s run function ketket_shops:tickfunc/direction/east
execute as @s[y_rotation=-44..44] at @s run function ketket_shops:tickfunc/direction/south
execute as @s[y_rotation=45..135] at @s run function ketket_shops:tickfunc/direction/west

execute as @e[type=marker,tag=detector] at @s run function ketket_shops:tickfunc/markerfunc

execute as @s[nbt=!{SelectedItem:{id:"minecraft:player_head"}}] run tag @s remove placeshop
