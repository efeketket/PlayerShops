tag @s add productupdateing
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:2b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:3b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:4b}] run function ketket_shops:menu/page2/modification/updateproduct

execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:11b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:12b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:13b}] run function ketket_shops:menu/page2/modification/updateproduct

execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:20b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:21b}] run function ketket_shops:menu/page2/modification/updateproduct
execute as @s[tag=productupdateing] if data block ~ ~ ~ Items[{Slot:22b}] run function ketket_shops:menu/page2/modification/updateproduct

execute as @s if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,components:{"minecraft:custom_data":{ketket_shop:1b}}}] run function ketket_shops:menu/page2/modification/updateprice

execute at @s run function ketket_shops:menu/modification/emptydisp

tag @s[tag=messagesended] remove messagesended