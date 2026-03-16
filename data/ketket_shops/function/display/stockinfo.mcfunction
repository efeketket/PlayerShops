execute if entity @e[tag=interaction,tag=main,tag=playershop,sort=nearest,limit=1,distance=..1,tag=!inf] run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Stocked Item : ","color":"gold"},{"score":{"name":"@e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1]","objective":"currentstock"},"bold":true,"color":"yellow"},{"text":"/","bold":true,"color":"yellow"},{"score":{"name":"@e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1]","objective":"totalstock"},"bold":true,"color":"yellow"}]
execute if entity @e[tag=interaction,tag=main,tag=playershop,sort=nearest,limit=1,distance=..1,tag=inf] run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Stocked Item : ","color":"gold"},{"text":" ∞","color":"yellow"}]

#execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.components."minecraft:custom_data".display run function ketket_shops:display/iteminfodisp/display
#execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.components."minecraft:enchantments" run function ketket_shops:display/iteminfodisp/storedenchantments
#execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.components."minecraft:custom_data".Enchantments run function ketket_shops:display/iteminfodisp/enchantments


