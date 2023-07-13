tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Stocked Item : ","color":"gold"},{"score":{"name":"@e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1]","objective":"currentstock"},"bold":true,"color":"yellow"},{"text":"/","bold":true,"color":"yellow"},{"score":{"name":"@e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1]","objective":"totalstock"},"bold":true,"color":"yellow"}]

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag.display run function ketket_shops:display/iteminfodisp/display
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag.StoredEnchantments run function ketket_shops:display/iteminfodisp/storedenchantments
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag.Enchantments run function ketket_shops:display/iteminfodisp/enchantments


