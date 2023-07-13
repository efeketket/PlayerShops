particle minecraft:block minecraft:glass ~ ~0.2 ~ .125 .125 .125 0 60
playsound minecraft:block.glass.break block @a[distance=..5] ~ ~1 ~ 1 1
loot spawn ~ ~ ~ loot ketket_shops:shopcase

scoreboard players remove @s totalstock_chestcount 1
execute if score @s totalstock_chestcount matches 2.. run summon minecraft:item ~ ~0.5 ~ {Item:{Count:1b,id:"minecraft:chest"},Tags:["chestreturn"]}
execute if score @s totalstock_chestcount matches 2.. run execute store result entity @e[type=item,sort=nearest,limit=1,tag=chestreturn] Item.Count byte 1 run scoreboard players get @s totalstock_chestcount 

kill @e[tag=playershop,distance=..0.5]