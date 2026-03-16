execute as @e[distance=..1,type=text_display] at @s run function ketket_shops:display/writes

#data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product
#data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.count merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.Count
data modify entity @e[tag=priceimg,sort=nearest,limit=1,type=item_display] item merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price

data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.id set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.id
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.count set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.Count
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product

execute as @s[tag=!messagesended] run playsound minecraft:ui.cartography_table.take_result ambient @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ~ ~ ~ 1 1
execute as @s[tag=!messagesended] run tellraw @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ["","[",{"text":"Player Shop","color":"green"},"]"," Changes successfully saved."]
tag @s add messagesended


