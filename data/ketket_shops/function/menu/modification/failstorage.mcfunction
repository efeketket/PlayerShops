summon minecraft:item ~ ~1 ~ {Tags:["failstoragereturn"],Item:{id:"minecraft:dirt",count:1b}}
data modify entity @e[type=item,tag=failstoragereturn,limit=1,sort=nearest] Item set from entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data".ValueHolder
execute as @p[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=failstoragereturn,distance=..2] @s
execute as @e[tag=failstoragereturn] run tag @s remove failstoragereturn