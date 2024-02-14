execute on attacker as @s[tag=shop_admin] run function ketket_shops:interactions/remove/remove
execute on attacker as @s[tag=!shop_admin] unless score @s unique_shopid = @e[type=interaction,tag=main,sort=nearest,limit=1] unique_shopid run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. It's not belongs to you.","color":"gold"}]
execute on attacker if score @s unique_shopid = @e[type=interaction,tag=main,sort=nearest,limit=1] unique_shopid run function ketket_shops:interactions/remove/remove 
