execute unless data block ~ ~ ~ Items[{Slot:24b, components:{pages:['{"text":" ", "bold":true}']}}] run execute as @e[distance=..1,tag=displaytext,sort=nearest] at @s run function ketket_shops:display/bookwrite

execute as @e[distance=..1,type=text_display] at @s run function ketket_shops:display/writes

function ketket_shops:menu/modification/emptydisp

playsound minecraft:ui.cartography_table.take_result ambient @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ~ ~ ~ 1 1
tellraw @p[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] ["","[",{"text":"Player Shop","color":"green"},"]"," Changes successfully saved."]
