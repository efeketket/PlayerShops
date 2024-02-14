execute as @s[tag=!noowner] on target if score @s unique_shopid = @e[type=interaction,sort=nearest,limit=1,tag=main] unique_shopid run function ketket_shops:click/rightowner
execute as @s[tag=!noowner] on target as @s[tag=shop_admin] run function ketket_shops:click/rightowner
execute as @s[tag=!noowner,tag=main] on target unless score @s unique_shopid = @e[type=interaction,sort=nearest,limit=1,tag=main] unique_shopid run function ketket_shops:click/rightnotowner

execute as @s[tag=!noowner] on target if score @s Sneaking_ps matches 1 if score @s unique_shopid = @e[type=interaction,sort=nearest,limit=1,tag=main] unique_shopid run function ketket_shops:click/shiftright

execute as @s[tag=noowner] on target run function ketket_shops:interactions/claimshop

data remove entity @s interaction

