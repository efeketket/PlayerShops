data modify entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".Owner set from entity @s UUID

advancement grant @s only ketket_shops:sp_adv_3
tellraw @s ["","[",{"text":"Player Shop","color":"green"},"] ","Shop successfully claimed."]

tag @s remove this
data remove entity @e[type=interaction,sort=nearest,limit=1] interaction