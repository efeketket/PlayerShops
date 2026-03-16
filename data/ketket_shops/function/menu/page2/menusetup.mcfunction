execute as @s[tag=setup] at @s run data modify block ~ ~ ~ CustomName set value {"text":"        Set Your Shop","color":"dark_green","bold":true,"italic":false}


execute as @s[tag=!setup] unless data block ~ ~ ~ {Items:[{Slot:26b,id:"minecraft:lime_dye",components:{"minecraft:custom_data":{ketket_shop:1b}}}]} run function ketket_shops:menu/page2/savechanges
execute as @s[tag=!setup] unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:arrow",components:{"minecraft:custom_data":{ketket_shop:1b}}}]} run function ketket_shops:menu/modification/pageswitch
execute as @s[tag=!setup] unless data block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:brush",components:{"minecraft:custom_data":{ketket_shop:1b}}}]} run function ketket_shops:menu/modification/clearcache

execute as @s[tag=!setup,tag=admin_shop] unless data block ~ ~ ~ {Items:[{Slot:9b,components:{"minecraft:custom_data":{ketket_shop:1b}}}]} run function ketket_shops:menu/page2/modification/makeinfinit

execute as @s[tag=setup] at @s run data modify block ~ ~ ~ Items set value []
execute unless data block ~ ~ ~ Items[{Slot:0b}] run loot replace block ~ ~ ~ container.0 loot ketket_shops:pageswitch
execute unless data block ~ ~ ~ Items[{Slot:1b}] run loot replace block ~ ~ ~ container.1 loot ketket_shops:emptyslot
execute as @s[tag=setup] run item replace block ~ ~ ~ container.2 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.3 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.4 with minecraft:air
execute unless data block ~ ~ ~ Items[{Slot:5b}] run loot replace block ~ ~ ~ container.5 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:6b}] run loot replace block ~ ~ ~ container.6 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:7b}] run loot replace block ~ ~ ~ container.7 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:8b}] run loot replace block ~ ~ ~ container.8 loot ketket_shops:resetshop
execute as @s[tag=!admin_shop] unless data block ~ ~ ~ Items[{Slot:9b}] run loot replace block ~ ~ ~ container.9 loot ketket_shops:emptyslot
execute as @s[tag=admin_shop,tag=!inf] run loot replace block ~ ~ ~ container.9 loot ketket_shops:infinite_stock_disabled
execute as @s[tag=admin_shop,tag=inf] run loot replace block ~ ~ ~ container.9 loot ketket_shops:infinite_stock_enabled
##
execute unless data block ~ ~ ~ Items[{Slot:10b}] run loot replace block ~ ~ ~ container.10 loot ketket_shops:emptyslot
execute as @s[tag=setup] run item replace block ~ ~ ~ container.11 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.12 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.13 with minecraft:air
execute unless data block ~ ~ ~ Items[{Slot:14b}] run loot replace block ~ ~ ~ container.14 loot ketket_shops:emptyslot
execute as @s[tag=setup] run loot replace block ~ ~ ~ container.15 loot ketket_shops:pricedisp
execute unless data block ~ ~ ~ Items[{Slot:16b}] run loot replace block ~ ~ ~ container.16 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:17b}] run loot replace block ~ ~ ~ container.17 loot ketket_shops:emptyslot
execute as @s[tag=setup] run loot replace block ~ ~ ~ container.18 loot ketket_shops:closemenu
execute unless data block ~ ~ ~ Items[{Slot:19b}] run loot replace block ~ ~ ~ container.19 loot ketket_shops:emptyslot
execute as @s[tag=setup] run item replace block ~ ~ ~ container.20 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.21 with minecraft:air
execute as @s[tag=setup] run item replace block ~ ~ ~ container.22 with minecraft:air
execute unless data block ~ ~ ~ Items[{Slot:23b}] run loot replace block ~ ~ ~ container.23 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:24b}] run loot replace block ~ ~ ~ container.24 loot ketket_shops:emptyslot 
execute unless data block ~ ~ ~ Items[{Slot:25b}] run loot replace block ~ ~ ~ container.25 loot ketket_shops:emptyslot
execute unless data block ~ ~ ~ Items[{Slot:26b}] run loot replace block ~ ~ ~ container.26 loot ketket_shops:savechanges

tag @s remove setup



