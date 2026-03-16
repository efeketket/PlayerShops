summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",count:1b},Tags:["selleditem"]}
data modify entity @e[type=item,tag=selleditem,sort=nearest,limit=1] Item set from entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".Product
data modify entity @e[type=item,tag=selleditem,sort=nearest,limit=1] Item.count set value 64b
execute as @a[tag=customer,distance=..8] run tp @e[tag=selleditem,sort=nearest,limit=1] @s
execute as @e[type=item,tag=selleditem] at @s run tag @s remove selleditem
scoreboard players remove @s product_countholder 64

execute if score @s product_countholder matches 64.. run function ketket_shops:selling/stacksell