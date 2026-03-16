data modify entity @s item.components."minecraft:custom_data".StorageCheck set from entity @s item.components."minecraft:custom_data".Product
data remove entity @s item.components."minecraft:custom_data".StorageCheck.Slot
data remove entity @s item.components."minecraft:custom_data".StorageCheck.count
data modify entity @s item.components."minecraft:custom_data".ValueHolder set from block ~ ~ ~ Items[{Slot:13b}] 

execute if data entity @s item.components."minecraft:custom_data".StorageCheck.components."minecraft:custom_data".RepairCost if data block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".RepairCost run data modify entity @s item.components."minecraft:custom_data".StorageCheck.components."minecraft:custom_data".RepairCost set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".RepairCost

execute store result score @s boolean_shop run data modify block ~ ~ ~ Items[{Slot:13b}] merge from entity @s item.components."minecraft:custom_data".StorageCheck 

execute if score @s boolean_shop matches 0 run execute as @e[type=interaction,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/modification/sucstorage
execute if score @s boolean_shop matches 1 run execute as @e[type=interaction,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/modification/failstorage

data remove block ~ ~ ~ Items[{Slot:13b}]


#0 geçsin
#1 kalsın