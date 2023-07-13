execute as @s[tag=shop_admin] run function ketket_shops:interactions/remove/removesucces

execute as @s[tag=!shop_admin] run execute unless score @e[type=interaction,sort=nearest,limit=1] currentstock matches 0 run function ketket_shops:interactions/remove/removefail
execute as @s[tag=!shop_admin] run execute unless score @e[type=interaction,sort=nearest,limit=1] totalearn matches 0 run function ketket_shops:interactions/remove/removefail
execute as @s[tag=!shop_admin] run execute if score @e[type=interaction,sort=nearest,limit=1] currentstock matches 0 if score @e[type=interaction,sort=nearest,limit=1] totalearn matches 0 run function ketket_shops:interactions/remove/removesucces






