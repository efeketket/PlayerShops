summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",count:1},Tags:["selleditem"]}
data modify entity @e[tag=selleditem,sort=nearest,limit=1] Item set from entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".Product
execute as @a[tag=customer,distance=..8] run tp @e[tag=selleditem,sort=nearest,limit=1] @s
execute as @e[type=item,tag=selleditem] at @s run tag @s remove selleditem
