execute if score @s totalearn matches 64.. run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",Count:64b},Tags:["earned"]}
execute if score @s totalearn matches 64.. run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Price
execute if score @s totalearn matches 64.. run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item.Count set value 64b
execute if score @s totalearn matches 64.. run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=earned,distance=..2] @s
execute if score @s totalearn matches 64.. run execute as @e[type=item,tag=earned] at @s run tag @s remove earned
execute if score @s totalearn matches 64.. run scoreboard players add @s totalearn_msg 64
execute if score @s totalearn matches 64.. run scoreboard players remove @s totalearn 64

execute if score @s totalearn matches ..64 run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",Count:64b},Tags:["earned"]}
execute if score @s totalearn matches ..64 run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Price
execute if score @s totalearn matches ..64 run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=earned,distance=..2] @s
execute if score @s totalearn matches ..64 run execute store result entity @e[type=item,tag=earned,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get @s totalearn
execute if score @s totalearn matches ..64 run execute as @e[type=item,tag=earned] at @s run tag @s remove earned
execute if score @s totalearn matches ..64 run tag @s remove earnwithdraw
execute if score @s totalearn matches ..64 run scoreboard players operation @s totalearn_msg += @s totalearn
execute if score @s totalearn matches ..64 run scoreboard players set @s totalearn 0

execute if score @s totalearn matches 0 run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run advancement grant @s only ketket_shops:sp_adv_2
execute if score @s totalearn matches 0 run execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" x","color":"gold"},{"score":{"name":"@e[type=interaction,sort=nearest,limit=1]","objective":"totalearn_msg"},"color":"gold"}," ",{"nbt":"item.tag.Price.id","entity":"@e[type=item_display,sort=nearest,tag=shopdata,limit=1]","color":"gold"},""," Collected from shop."]
execute if score @s[tag=!quickremover1] totalearn matches 0 run playsound minecraft:entity.player.levelup ambient @p[tag=menuopener] ~ ~ ~ 1 1
execute if score @s totalearn matches 0 run scoreboard players set @s totalearn_msg 0

execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Price set value [{}]
execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run scoreboard players set @s product_price 0
execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run tag @s remove quickremover1