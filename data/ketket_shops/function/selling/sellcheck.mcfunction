#execute as @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,tag=empty] at @s run data modify entity @e[type=text_display,limit=1,tag=displaytext,sort=nearest] text set value '{"bold":true,"color":"red","text":"Out of Stock!"}'

tag @s add customer
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price
data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder.count

data modify storage payment_holder SelectedItem set from entity @s SelectedItem
data remove storage payment_holder SelectedItem.count

execute store result score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] boolean_shop run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder set from storage payment_holder SelectedItem

execute store result score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] pay_price run data get entity @s SelectedItem.count
#check here
execute if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] boolean_shop matches 0 if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] product_price <= @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] pay_price if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] currentstock >= @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] product_count run function ketket_shops:selling/selled
execute if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] boolean_shop matches 0 if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] product_price > @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] pay_price run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Not enough price.","color":"red"}]
execute if score @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,sort=nearest] boolean_shop matches 1 run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Invaild payment item.","color":"red"}]

data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price

execute as @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,tag=!empty,sort=nearest,tag=!inf] at @s if score @s currentstock < @s product_count run tag @s add empty
execute as @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,tag=empty,sort=nearest,tag=!inf] at @s run data modify entity @e[type=text_display,limit=1,tag=displaytext,sort=nearest] text set value {"bold":true,"color":"red","text":"Out of Stock!"}

tag @s remove customer

