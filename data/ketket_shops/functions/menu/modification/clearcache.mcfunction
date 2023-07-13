tag @s add quickremover
tag @s add quickremover1

execute if score @s currentstock matches ..0 run tag @s remove quickremover
execute if score @s totalearn matches ..0 run tag @s remove quickremover1


execute if score @s currentstock matches ..0 run scoreboard players set @s product_count 0
execute if score @s totalearn matches ..0 run scoreboard players set @s product_price 0

execute if score @s totalearn matches 1.. run tag @s add earnwithdraw
execute as @s[tag=earnwithdraw] at @s run function ketket_shops:menu/modification/balancereturn

execute if score @s currentstock matches 1.. run tag @s add emptying
execute as @s[tag=emptying] at @s run function ketket_shops:menu/modification/emptystorage

data modify entity @e[tag=priceimg,sort=nearest,limit=1,type=item_display] item.id set value "minecraft:air"
data modify entity @e[type=text_display,limit=1,tag=producttext,sort=nearest] text set value ""
data modify entity @e[type=text_display,limit=1,tag=pricetext,sort=nearest] text set value ""
#execute as @e[distance=..1,tag=displaytext,sort=nearest] at @s run function ketket_shops:display/bookwrite

data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.id set value "minecraft:emerald"
data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.Count set value 1b

playsound minecraft:block.beehive.shear ambient @p[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] ~ ~ ~ 1 2
tellraw @p[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] ["","[",{"text":"Player Shop","color":"green"},"]"," Shop data cleared."]


execute if score @s totalearn matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Price set value [{}]
execute if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag.Product set value [{}]
execute if score @s totalearn matches ..0 if score @s currentstock matches ..0 run data modify entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.tag set value {Product:[{}],Price:[{}],StorageCheck:[{}],ValueHolder:[{}],PriceDisp:[{}],ProductDisp:[{}],SellingHolder:[{}]}