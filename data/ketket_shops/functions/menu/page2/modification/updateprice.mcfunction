scoreboard players set @s boolean_shop 0
execute unless data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price.id run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price set from block ~ ~ ~ Items[{Slot:15b}]

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price.id run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.StorageCheck set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price

execute store result score @s boolean_shop run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.StorageCheck.id set from block ~ ~ ~ Items[{Slot:15b}].id
execute if score @s boolean_shop matches 0 unless data block ~ ~ ~ Items[{Slot:15b, tag:{ketket_shop:1b}}] run execute store result score @s boolean_shop run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.StorageCheck.tag set from block ~ ~ ~ Items[{Slot:15b}].tag
execute if score @s boolean_shop matches 0 unless data block ~ ~ ~ Items[{Slot:15b, tag:{ketket_shop:1b}}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price set from block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 1 unless data block ~ ~ ~ Items[{Slot:15b, tag:{ketket_shop:1b}}] if score @s totalearn matches 0 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price set from block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 1 unless data block ~ ~ ~ Items[{Slot:15b, tag:{ketket_shop:1b}}] if score @s totalearn matches 0 run scoreboard players set @s boolean_shop 2

data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price.Slot

execute store result score @s product_price run data get entity @e[type=item_display,limit=1,sort=nearest,tag=shopdata] item.tag.Price.Count

execute if score @s boolean_shop matches 0 run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 0 run scoreboard players operation @s totalearn += @s product_price 
execute if score @s boolean_shop matches 2 run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if score @s boolean_shop matches 2 run scoreboard players operation @s totalearn += @s product_price 

execute if score @s boolean_shop matches 0 run function ketket_shops:menu/page2/modification/end
execute if score @s boolean_shop matches 2 run function ketket_shops:menu/page2/modification/end


execute if score @s boolean_shop matches 1 if score @s unique_shopid = @p unique_shopid run tellraw @p ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't change price type. There are incoming profits. Withdraw it before changing price type.","color":"red"}]
