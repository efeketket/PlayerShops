data remove block ~ ~ ~ Items[{Slot:13b}]

scoreboard players operation @s totalstock_holder *= @s totalstock_upgrade
scoreboard players operation @s totalstock += @s totalstock_holder
scoreboard players set @s totalstock_holder 1728

scoreboard players operation @s totalstock_chestcount += @s totalstock_upgrade 

tellraw @p[tag=menuopener,sort=nearest,limit=1] ["","[",{"text":"Player Shop","color":"green"},"]"," Storage upgraded."]