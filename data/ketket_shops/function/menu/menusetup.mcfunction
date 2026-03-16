execute as @s[tag=!setup] run setblock ~ ~ ~ trapped_chest{CustomName:{"text":" "}} replace
execute as @s[tag=!setup] at @s run data modify block ~ ~ ~ CustomName set value {text:"           ShopGUI",color:"dark_green",bold:true,italic:false}
loot replace block ~ ~ ~ container.0 loot ketket_shops:earndisp
loot replace block ~ ~ ~ container.1 loot ketket_shops:cproductdisp
execute unless data block ~ ~ ~ Items[{Slot:2b}] run loot replace block ~ ~ ~ container.2 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:3b}] run loot replace block ~ ~ ~ container.3 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:4b}] run loot replace block ~ ~ ~ container.4 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:5b}] run loot replace block ~ ~ ~ container.5 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:6b}] run loot replace block ~ ~ ~ container.6 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:7b}] run loot replace block ~ ~ ~ container.7 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:8b}] run execute as @s[tag=!setup] run loot replace block ~ ~ ~ container.8 loot ketket_shops:moreslot
execute unless data block ~ ~ ~ Items[{Slot:9b}] run loot replace block ~ ~ ~ container.9 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:10b}] run loot replace block ~ ~ ~ container.10 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:11b}] run loot replace block ~ ~ ~ container.11 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:12b}] run loot replace block ~ ~ ~ container.12 loot ketket_shops:emptyslot
execute as @s[tag=!empty] run execute if data block ~ ~ ~ Items[{Slot:13b, components:{"minecraft:custom_data":{ketket_shop:1b}}}] run item replace block ~ ~ ~ container.13 with minecraft:air
execute as @s[tag=!empty,tag=inf] run loot replace block ~ ~ ~ container.13 loot ketket_shops:barrier2
execute as @s[tag=empty] if data entity @e[type=item_display,sort=nearest,tag=shopdata,limit=1] item.components."minecraft:custom_data".Product[{}] run loot replace block ~ ~ ~ container.13 loot ketket_shops:barrier 
#execute as @s[tag=!filling] run loot replace block ~ ~ ~ container.13 loot ketket_shops:barrier
execute unless data block ~ ~ ~ Items[{Slot:14b}] run loot replace block ~ ~ ~ container.14 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:16b}] run loot replace block ~ ~ ~ container.16 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:17b}] run loot replace block ~ ~ ~ container.17 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:18b}] run execute as @s[tag=!setup] run loot replace block ~ ~ ~ container.18 loot ketket_shops:closemenu
execute unless data block ~ ~ ~ Items[{Slot:19b}] run loot replace block ~ ~ ~ container.19 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:20b}] run loot replace block ~ ~ ~ container.20 loot ketket_shops:resetshop
execute unless data block ~ ~ ~ Items[{Slot:21b}] run loot replace block ~ ~ ~ container.21 loot ketket_shops:emptyslot 
execute as @s[tag=!inf] run loot replace block ~ ~ ~ container.22 loot ketket_shops:stockdisp
execute as @s[tag=inf] run loot replace block ~ ~ ~ container.22 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:23b}] run loot replace block ~ ~ ~ container.23 loot ketket_shops:emptyslot
#execute unless data block ~ ~ ~ Items[{Slot:24b}] run execute as @s[tag=!setup] run loot replace block ~ ~ ~ container.24 loot ketket_shops:displayname 
execute unless data block ~ ~ ~ Items[{Slot:24b}] run loot replace block ~ ~ ~ container.24 loot ketket_shops:displayname
execute unless data block ~ ~ ~ Items[{Slot:25b}] run loot replace block ~ ~ ~ container.25 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:26b}] run loot replace block ~ ~ ~ container.26 loot ketket_shops:savechanges

tag @s add setup

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".ProductDisp set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product run data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".ProductDisp.components."minecraft:custom_data".display

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".PriceDisp set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price run data remove entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".PriceDisp.components."minecraft:custom_data".display

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product run data modify block ~ ~ ~ Items[{Slot:1b}] merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".ProductDisp
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Price run data modify block ~ ~ ~ Items[{Slot:0b}] merge from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".PriceDisp
