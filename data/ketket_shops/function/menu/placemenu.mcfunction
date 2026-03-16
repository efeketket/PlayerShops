#unlocker
execute at @s as @e[type=item_display,tag=shopdata,sort=nearest,limit=1] run function ketket_shops:menu/unlock

#hopper protector
execute as @e[type=interaction,tag=playershop,tag=main] at @s if block ~ ~-1 ~ minecraft:hopper{TransferCooldown:3} run data modify block ~ ~-1 ~ TransferCooldown set value 9
execute as @e[type=interaction,tag=playershop,tag=main] at @s if entity @e[type=hopper_minecart,distance=..2,nbt={Enabled:1b}] run data modify entity @e[type=hopper_minecart,distance=..2,limit=1,sort=nearest] Enabled set value 0b 

execute as @s[tag=page1,tag=setup] unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:brush"}]} run function ketket_shops:menu/modification/clearcache
execute as @s[tag=page1,tag=setup] unless data block ~ ~ ~ Items[{Slot:0b}] if score @e[tag=playershop,tag=interaction,sort=nearest,limit=1,distance=..0.5] totalearn matches 1.. run tag @s add earnwithdraw
execute as @s[tag=earnwithdraw] run function ketket_shops:menu/modification/balancereturn
execute as @s[tag=page1,tag=setup,tag=!inf] unless data block ~ ~ ~ Items[{Slot:22b}] if score @e[tag=playershop,tag=interaction,sort=nearest,limit=1,distance=..0.5] currentstock matches 1.. run tag @s add emptying
execute as @s[tag=emptying] at @s run function ketket_shops:menu/modification/emptystorage
execute as @s[tag=page1,tag=setup] unless data block ~ ~ ~ {Items:[{Slot:26b,id:"minecraft:lime_dye"}]} run function ketket_shops:menu/modification/savechanges

execute as @s[tag=page1,tag=setup] unless data block ~ ~ ~ Items[{Slot:8b}] run function ketket_shops:menu/modification/pageswitch

execute as @s[tag=page1,tag=setup] unless score @s totalstock_chestcount matches 18 if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:chest"}] unless data block ~ ~ ~ Items[{Slot:13b,components:{"minecraft:custom_data":{ketket_shop:1b}}}] run function ketket_shops:menu/modification/upcheck
execute as @s[tag=page1,tag=setup] if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,components:{"minecraft:custom_data":{ketket_shop:1b}}}] if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.components."minecraft:custom_data".Product.id run execute as @e[type=item_display,sort=nearest,tag=shopdata,limit=1] run function ketket_shops:menu/modification/fillstorage

execute as @s[tag=page1] run function ketket_shops:menu/menusetup
execute as @s[tag=page2] run function ketket_shops:menu/page2/menusetup

execute as @a[distance=..5] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run execute unless entity @s[distance=..4] run execute as @e[type=interaction,sort=nearest,tag=main,limit=1] run function ketket_shops:menu/removemenu
execute unless block ~ ~ ~ minecraft:trapped_chest run function ketket_shops:menu/removemenu
execute unless data block ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:red_dye"}]} run function ketket_shops:menu/removemenu


#execute unless block ~ ~ ~ minecraft:chest run tag @s remove menuon
#execute unless block ~ ~ ~ minecraft:chest run tag @s remove setup
