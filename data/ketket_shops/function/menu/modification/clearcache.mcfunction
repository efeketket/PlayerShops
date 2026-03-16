tag @s add quickremover
tag @s add quickremover1
tag @s remove inf

execute if score @s currentstock matches ..0 run tag @s remove quickremover
execute if score @s totalearn matches ..0 run tag @s remove quickremover1


execute if score @s currentstock matches ..0 run scoreboard players set @s product_count 0
execute if score @s totalearn matches ..0 run scoreboard players set @s product_price 0

execute if score @s totalearn matches 1.. run tag @s add earnwithdraw
execute as @s[tag=earnwithdraw] at @s run function ketket_shops:menu/modification/balancereturn

execute if score @s currentstock matches 1.. run tag @s add emptying
execute as @s[tag=emptying] at @s run function ketket_shops:menu/modification/emptystorage

data modify entity @e[tag=priceimg,sort=nearest,limit=1,type=item_display] item.id set value "minecraft:air"
execute as @e[type=text_display,distance=..0.3] run data modify entity @s text set value {"text":" "}
#execute as @e[distance=..1,tag=displaytext,sort=nearest] at @s run function ketket_shops:display/bookwrite

data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.id set value "minecraft:emerald"
data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.count set value 1b

playsound minecraft:block.beehive.shear ambient @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ~ ~ ~ 1 2
tellraw @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ["","[",{text:"Player Shop",color:"green"},"]"," Shop data cleared."]


execute if score @s totalearn matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Price set value [{}]
execute if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Product set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Product set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Price set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".PriceDisp set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".ProductDisp set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".StorageCheck set value [{}]