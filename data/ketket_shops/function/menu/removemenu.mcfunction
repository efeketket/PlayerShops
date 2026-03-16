setblock ~ ~ ~ minecraft:air destroy
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ketket_shop:1b}}}},distance=..2] 
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ketket_shop_text:1b}}}},distance=..2] 
kill @e[type=item,nbt={Item:{id:"minecraft:trapped_chest"}},distance=..2]

tag @s remove setup
tag @s remove menuon
tag @s remove page1
tag @s remove page2

execute at @s if score @p[tag=menuopener,distance=..8] unique_shopid = @s unique_shopid run tag @p[tag=menuopener,distance=..8] remove menuopener

scoreboard players set @s shop_page 0
