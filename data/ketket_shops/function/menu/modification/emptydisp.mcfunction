execute if score @s currentstock < @s product_count run tag @s add empty
execute as @s[tag=empty] run data modify entity @e[type=text_display,limit=1,sort=nearest,tag=displaytext,distance=..1] text set value {text:"Out of Stock!","bold":true,color:"red"}
execute if score @s currentstock >= @s product_count run tag @s remove empty
execute as @s[tag=!empty] run data modify entity @e[type=text_display,limit=1,sort=nearest,distance=..1,tag=displaytext] text set value {text:""}