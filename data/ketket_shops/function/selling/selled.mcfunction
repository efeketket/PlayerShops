#say hi

execute as @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1,distance=..1] at @s run scoreboard players operation @s return_price = @s pay_price
execute as @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1,distance=..1] at @s run scoreboard players operation @s return_price -= @s product_price

data modify entity @e[type=item_display,distance=..1,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder set from entity @s SelectedItem
execute store result entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".SellingHolder.count byte 1 run scoreboard players get @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] return_price
execute if score @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] return_price matches 0

execute as @e[type=interaction,sort=nearest,tag=main,limit=1] run scoreboard players operation @s product_countholder = @s product_count

execute as @e[type=interaction,sort=nearest,tag=main,limit=1] if score @s product_countholder matches 65.. run function ketket_shops:selling/stacksell
execute as @e[type=interaction,sort=nearest,tag=main,limit=1] if score @s product_countholder matches 1..64 run function ketket_shops:selling/notstacksell
scoreboard players set @e[type=interaction,sort=nearest,tag=main,limit=1] product_countholder 0

execute as @e[type=interaction,sort=nearest,tag=main,limit=1,tag=!inf] run scoreboard players operation @s currentstock -= @s product_count
scoreboard players operation @e[type=interaction,sort=nearest,tag=main,limit=1] totalearn += @e[type=interaction,sort=nearest,tag=main,limit=1] product_price

setblock ~ ~ ~ minecraft:hopper replace
data modify block ~ ~ ~ Items.[{Slot:0b}] set from entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".SellingHolder
item replace entity @s weapon from block ~ ~ ~ container.0
execute if score @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] return_price matches 0 run item replace entity @s weapon with minecraft:air
setblock ~ ~ ~ minecraft:air replace

