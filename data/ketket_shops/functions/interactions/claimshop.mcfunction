execute unless score @s unique_shopid = @s unique_shopid run scoreboard players add #unique_shopid unique_shopid 1
execute unless score @s unique_shopid = @s unique_shopid run scoreboard players operation @s unique_shopid = #unique_shopid unique_shopid

scoreboard players operation @e[tag=playershop,tag=main,type=interaction,sort=nearest,limit=1,distance=..0.5] unique_shopid = @s unique_shopid
tag @e[tag=playershop,tag=main,type=interaction,sort=nearest,limit=1,distance=..0.5] remove noowner
tellraw @s ["","[",{"text":"Player Shop","color":"green"},"] ","Shop successfully claimed."]

data remove entity @e[tag=playershop,tag=main,type=interaction,sort=nearest,limit=1,distance=..0.5] interaction