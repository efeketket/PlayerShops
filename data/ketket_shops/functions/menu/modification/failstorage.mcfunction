summon minecraft:item ~ ~1 ~ {Tags:["failstoragereturn"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,tag=failstoragereturn,limit=1,sort=nearest] Item set from entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.tag.ValueHolder
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=failstoragereturn,distance=..2] @s
execute as @e[tag=failstoragereturn] run tag @s remove failstoragereturn