execute at @s run function ketket_shops:menu/openingmenu
execute as @p[tag=this,tag=shop_admin] run tag @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] add admin_shop

tag @p[tag=this] add menuopener

execute on target run tag @s remove this
data remove entity @s interaction