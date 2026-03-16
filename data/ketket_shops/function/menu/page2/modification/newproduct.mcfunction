execute if score @s currentstock >= @s product_count run tag @s remove empty

execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:4b}]

execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:12b}]
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:13b}]

execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:21b}]
execute if data block ~ ~ ~ Items[{Slot:22b}] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product set from block ~ ~ ~ Items[{Slot:22b}]

data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.Slot

scoreboard players set @s product_count 0
scoreboard players set @s math.division 64

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:3b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:4b}].count
scoreboard players operation @s product_count += @s product_countholder 


execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:11b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:12b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:13b}].count
scoreboard players operation @s product_count += @s product_countholder 


execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:20b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:21b}].count
scoreboard players operation @s product_count += @s product_countholder 

execute store result score @s product_countholder run data get block ~ ~ ~ Items[{Slot:22b}].count
scoreboard players operation @s product_count += @s product_countholder 

scoreboard players operation @s product_countholder = @s product_count
scoreboard players operation @s product_countholder %= @s math.division 


execute unless score @s product_countholder matches 0 store result entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.count byte 1 run scoreboard players get @s product_countholder
execute if score @s product_countholder matches 0 store result entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.count byte 1 run scoreboard players get @s product_count
execute if score @s product_countholder matches 0 if score @s product_count matches 64.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.count set value 64b

scoreboard players set @s product_countholder 0

data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.Slot

scoreboard players operation @s currentstock += @s product_count

data remove block ~ ~ ~ Items[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:4b}]
data remove block ~ ~ ~ Items[{Slot:11b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:13b}]
data remove block ~ ~ ~ Items[{Slot:20b}]
data remove block ~ ~ ~ Items[{Slot:21b}]
data remove block ~ ~ ~ Items[{Slot:22b}]
data modify entity @e[type=text_display,limit=1,tag=displaytext,sort=nearest] text set value '{"bold":true,"color":"red","text":""}'

function ketket_shops:menu/page2/modification/end