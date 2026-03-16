execute if score @s totalearn matches 64.. run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",count:64b},Tags:["earned"]}
execute if score @s totalearn matches 64.. run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Price
execute if score @s totalearn matches 64.. run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item.count set value 64b
execute if score @s totalearn matches 64.. run function ketket_shops:click/tpitems with entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data"
execute if score @s totalearn matches 64.. run execute as @e[type=item,tag=earned] at @s run tag @s remove earned
execute if score @s totalearn matches 64.. run scoreboard players add @s totalearn_msg 64
execute if score @s totalearn matches 64.. run scoreboard players remove @s totalearn 64

execute if score @s totalearn matches ..64 run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",count:64b},Tags:["earned"]}
execute if score @s totalearn matches ..64 run data modify entity @e[type=item,tag=earned,limit=1,sort=nearest] Item merge from entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Price
execute if score @s totalearn matches ..64 run function ketket_shops:click/tpitems with entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data"
execute if score @s totalearn matches ..64 run execute store result entity @e[type=item,tag=earned,limit=1,sort=nearest] Item.count byte 1 run scoreboard players get @s totalearn
execute if score @s totalearn matches ..64 run execute as @e[type=item,tag=earned] at @s run tag @s remove earned
execute if score @s totalearn matches ..64 run tag @s remove earnwithdraw
execute if score @s totalearn matches ..64 run scoreboard players operation @s totalearn_msg += @s totalearn
execute if score @s totalearn matches ..64 run scoreboard players set @s totalearn 0

execute if score @s totalearn matches 0 run execute as @p[tag=menuopener,distance=..8] run tellraw @s ["","[",{text:"Player Shop",color:"green"},"]",{text:" x",color:"gold"},{score:{name:"@e[type=interaction,sort=nearest,limit=1]",objective:"totalearn_msg"},color:"gold"}," ",{nbt:"item.components.'minecraft:custom_data'.Price.id","entity":"@e[type=item_display,sort=nearest,tag=shopdata,limit=1]","color":"gold"},""," Collected from shop."]
execute if score @s totalearn matches 0 run execute as @p[tag=menuopener,distance=..8] run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 1
execute if score @s totalearn matches 0 run scoreboard players set @s totalearn_msg 0

execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Price set value [{}]
execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run scoreboard players set @s product_price 0
execute as @s[tag=quickremover1] if score @s totalearn matches ..64 run tag @s remove quickremover1

