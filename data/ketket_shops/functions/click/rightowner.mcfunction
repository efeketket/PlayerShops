execute if score @s[tag=menuopener] Sneaking_ps matches 0 run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't open the shop menu while another shop menu is already open. Please close the existing one.","color":"red"}]
execute if score @s[tag=!menuopener] Sneaking_ps matches 0 run execute as @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/openingmenu
tag @s add menuopener
