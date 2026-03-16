execute store result score @s totalstock_upgrade run data get block ~ ~ ~ Items[{Slot:13b}].count
data remove block ~ ~ ~ Items[{Slot:13b}]

scoreboard players operation @s totalstock_chestcount_holder = @s totalstock_chestcount
scoreboard players operation @s totalstock_chestcount_holder += @s totalstock_upgrade 

execute if score @s totalstock_chestcount_holder matches ..18 run function ketket_shops:menu/modification/upstorage
execute if score @s totalstock_chestcount_holder matches 19.. run function ketket_shops:menu/modification/failupstorage




