execute store result score @s currentstock_add run data get block ~ ~ ~ Items[{Slot:13b}].count
scoreboard players operation @s currentstock += @s currentstock_add
execute if entity @e[type=text_display,sort=nearest,limit=1,tag=displaytext,nbt={text:{bold:true,color:"red",text:"Out of Stock!"}},distance=..1] run data modify entity @e[type=text_display,limit=1,sort=nearest,distance=..1,tag=displaytext] text set value "[]"

execute as @s run function ketket_shops:menu/modification/emptydisp

execute if score @s currentstock > @s totalstock run function ketket_shops:menu/modification/failstorage
execute if score @s currentstock > @s totalstock run scoreboard players operation @s currentstock -= @s currentstock_add
#execute as @e[type=interaction,tag=playershop,tag=main,limit=1,distance=..1,tag=empty] at @s run data modify entity @e[type=text_display,limit=1,tag=displaytext] text set value '{"text":"Out of Stock!","bold":true,"color":"red"}'