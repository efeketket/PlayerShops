summon minecraft:item ~ ~1 ~ {Tags:["failstoragereturnup"],Item:{id:"minecraft:chest",count:1b}}
execute store result entity @e[type=item,tag=failstoragereturnup,limit=1,sort=nearest] Item.count byte 1 run scoreboard players get @s totalstock_upgrade
#execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=failstoragereturnup,distance=..2] @s
execute as @e[tag=failstoragereturnup] run tag @s remove failstoragereturnup

scoreboard players set @s totalstock_chestcount_holder 0

execute as @p[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tellraw @p[tag=menuopener,sort=nearest,limit=1] ["","[",{text:"Player Shop",color:"green"},"]"," You reached storage limit."]