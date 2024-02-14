execute as @e[distance=..1,type=text_display] at @s run function ketket_shops:display/writes

#data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product
#data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.Count merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.Count
data modify entity @e[tag=priceimg,sort=nearest,limit=1,type=item_display] item merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Price

data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.id set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.id
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.Count set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.Count
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag

execute as @s[tag=!messagesended] run playsound minecraft:ui.cartography_table.take_result ambient @p[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] ~ ~ ~ 1 1
execute as @s[tag=!messagesended] run tellraw @p[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] ["","[",{"text":"Player Shop","color":"green"},"]"," Changes successfully saved."]
tag @s add messagesended


