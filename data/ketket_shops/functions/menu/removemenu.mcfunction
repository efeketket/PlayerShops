setblock ~ ~ ~ minecraft:air destroy
kill @e[type=item,nbt={Item:{tag:{ketket_shop:1b}}},distance=..2] 
kill @e[type=item,nbt={Item:{tag:{ketket_shop_text:1b}}},distance=..2] 
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..2]

tag @s remove setup
tag @s remove menuon
tag @s remove page1
tag @s remove page2

execute as @a if score @s unique_shopid = @e[type=interaction,tag=main,sort=nearest,limit=1] unique_shopid run tag @s remove menuopener

scoreboard players set @s shop_page 0
