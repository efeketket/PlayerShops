#execute if score @s unique_shopid = @p[tag=this] unique_shopid run data modify entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data".Owner set from entity @p[tag=this] UUID

execute on target run tag @s add this
execute on target as @s[gamemode=creative] run tag @e[type=interaction,sort=nearest,limit=1,tag=main] add admin_shop
execute on target as @s[gamemode=creative] run execute as @e[type=interaction,sort=nearest,limit=1,tag=main] run function ketket_shops:click/rightowner

execute if score @p[tag=this,gamemode=!creative] unique_shopid = @s unique_shopid run function ketket_shops:click/rightowner
execute unless score @p[tag=this,gamemode=!creative] unique_shopid = @s unique_shopid run execute as @p[tag=this] run function ketket_shops:click/customer

#end
execute on target run tag @s remove this



