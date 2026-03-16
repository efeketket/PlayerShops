scoreboard players set @s boolean_shop 0
execute unless data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price.id run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price set from block ~ ~ ~ Items[{Slot:15b}]

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price.id run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".StorageCheck set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price

execute store result score @s boolean_shop run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".StorageCheck.id set from block ~ ~ ~ Items[{Slot:15b}].id
execute if score @s boolean_shop matches 0 unless data block ~ ~ ~ Items[{Slot:15b, components:{"minecraft:custom_data":{ketket_shop:1b}}}] run execute store result score @s boolean_shop run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".StorageCheck.components."minecraft:custom_data" set from block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data"
execute if score @s boolean_shop matches 0 unless data block ~ ~ ~ Items[{Slot:15b, components:{"minecraft:custom_data":{ketket_shop:1b}}}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price set from block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 1 unless data block ~ ~ ~ Items[{Slot:15b, components:{"minecraft:custom_data":{ketket_shop:1b}}}] if score @s totalearn matches 0 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price set from block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 1 unless data block ~ ~ ~ Items[{Slot:15b, components:{"minecraft:custom_data":{ketket_shop:1b}}}] if score @s totalearn matches 0 run scoreboard players set @s boolean_shop 2

data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price.Slot

execute store result score @s product_price run data get entity @e[type=item_display,limit=1,sort=nearest,tag=shopdata] item.components."minecraft:custom_data".Price.count

execute if score @s boolean_shop matches 0 run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 0 run scoreboard players operation @s totalearn += @s product_price 
execute if score @s boolean_shop matches 2 run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 2 run scoreboard players operation @s totalearn += @s product_price 

execute if score @s boolean_shop matches 0 run function ketket_shops:menu/page2/modification/end
execute if score @s boolean_shop matches 2 run function ketket_shops:menu/page2/modification/end


execute if score @s boolean_shop matches 1 if score @s unique_shopid = @p unique_shopid run tellraw @p ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't change price type. There are incoming profits. Withdraw it before changing price type.","color":"red"}]
