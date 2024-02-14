execute as @s[tag=shop_admin] run function ketket_shops:interactions/remove/removesucces

execute as @s[tag=!shop_admin] run execute unless score @e[type=interaction,sort=nearest,limit=1,tag=main] currentstock matches 0 unless score @e[type=interaction,sort=nearest,limit=1,tag=main] totalearn matches 0 run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. There are incoming profits or stocked items.","color":"red"}]
execute as @s[tag=!shop_admin] run execute if score @e[type=interaction,sort=nearest,limit=1,tag=main] currentstock matches 0 if score @e[type=interaction,sort=nearest,limit=1,tag=main] totalearn matches 0 run function ketket_shops:interactions/remove/removesucces






