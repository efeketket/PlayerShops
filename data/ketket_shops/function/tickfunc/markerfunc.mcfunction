execute positioned ~ ~1 ~ if block ~ ~ ~ player_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_wall_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_wall_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}
execute if block ~ ~ ~ player_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}
execute if block ~ ~ ~ player_wall_head{components:{"minecraft:custom_data":{shopcase:1b}}} run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumshop"]}

execute as @s[tag=south] run tag @e[type=item_frame,tag=sumshop,sort=nearest,limit=1] add south
execute as @s[tag=east] run tag @e[type=item_frame,tag=sumshop,sort=nearest,limit=1] add east
execute as @s[tag=west] run tag @e[type=item_frame,tag=sumshop,sort=nearest,limit=1] add west
execute as @s[tag=north] run tag @e[type=item_frame,tag=sumshop,sort=nearest,limit=1] add north

execute as @e[type=item_frame,tag=sumshop,sort=nearest,limit=1] at @s run function ketket_shops:shopplace
kill @s