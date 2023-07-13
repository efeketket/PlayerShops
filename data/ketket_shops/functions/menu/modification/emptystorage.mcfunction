execute if score @s currentstock matches 64.. run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",Count:64b},Tags:["storageempty"]}
execute if score @s currentstock matches 64.. run data modify entity @e[type=item,tag=storageempty,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Product
execute if score @s currentstock matches 64.. run data modify entity @e[type=item,tag=storageempty,limit=1,sort=nearest] Item.Count set value 64b
execute if score @s currentstock matches 64.. run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=storageempty,distance=..2] @s
execute if score @s currentstock matches 64.. run execute as @e[type=item,tag=storageempty] at @s run tag @s remove storageempty
execute if score @s currentstock matches 64.. run scoreboard players add @s currentstock_msg 64
execute if score @s currentstock matches 64.. run scoreboard players remove @s currentstock 64

execute if score @s currentstock matches ..64 run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",Count:64b},Tags:["storageempty"]}
execute if score @s currentstock matches ..64 run data modify entity @e[type=item,tag=storageempty,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Product
execute if score @s currentstock matches ..64 run execute store result entity @e[type=item,tag=storageempty,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get @s currentstock
execute if score @s currentstock matches ..64 run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=storageempty,distance=..2] @s
execute if score @s currentstock matches ..64 run execute as @e[type=item,tag=storageempty] at @s run tag @s remove storageempty
execute if score @s currentstock matches ..64 run tag @s remove emptying
execute if score @s currentstock matches ..64 run scoreboard players operation @s currentstock_msg += @s currentstock
execute if score @s currentstock matches ..64 run scoreboard players set @s currentstock 0
execute if score @s currentstock matches ..64 run tag @s add empty

execute if score @s currentstock matches 0 run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" x","color":"gold"},{"score":{"name":"@e[type=interaction,limit=1,sort=nearest,tag=main]","objective":"currentstock_msg"},"color":"gold"}," ",{"nbt":"item.tag.Product.id","entity":"@e[type=item_display,sort=nearest,tag=shopdata,limit=1]","color":"gold"},""," Collected from shop."]
execute if score @s[tag=!quickremover] currentstock matches 0 run playsound minecraft:entity.player.levelup ambient @p[tag=menuopener] ~ ~ ~ 1 2
execute if score @s currentstock matches 0 run scoreboard players set @s currentstock_msg 0
execute if score @s currentstock matches 0 run function ketket_shops:menu/modification/emptydisp
execute as @s[tag=quickremover] if score @s currentstock matches ..64 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Product set value [{}]
execute as @s[tag=quickremover] if score @s currentstock matches ..64 run scoreboard players set @s product_count 0
execute as @s[tag=quickremover] if score @s currentstock matches ..64 run tag @s remove quickremover