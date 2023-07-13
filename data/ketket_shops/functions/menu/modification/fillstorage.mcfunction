data modify entity @s item.tag.StorageCheck set from entity @s item.tag.Product
data remove entity @s item.tag.StorageCheck.Slot
data remove entity @s item.tag.StorageCheck.Count
data modify entity @s item.tag.ValueHolder set from block ~ ~ ~ Items[{Slot:13b}] 

execute if data entity @s item.tag.StorageCheck.tag.RepairCost if data block ~ ~ ~ Items[{Slot:13b}].tag.RepairCost run data modify entity @s item.tag.StorageCheck.tag.RepairCost set from block ~ ~ ~ Items[{Slot:13b}].tag.RepairCost

execute store result score @s boolean_shop run data modify block ~ ~ ~ Items[{Slot:13b}] merge from entity @s item.tag.StorageCheck 

execute if score @s boolean_shop matches 0 run execute as @e[type=interaction,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/modification/sucstorage
execute if score @s boolean_shop matches 1 run execute as @e[type=interaction,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/modification/failstorage

data remove block ~ ~ ~ Items[{Slot:13b}]


#0 geçsin
#1 kalsın