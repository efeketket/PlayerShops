execute as @p[gamemode=creative,tag=this] run return run function ketket_shops:interactions/remove/remove
#checker
execute if score @p[tag=this] unique_shopid = @s unique_shopid run execute as @p[tag=this] run return run function ketket_shops:interactions/remove/remove
execute unless score @p[tag=this] unique_shopid = @s unique_shopid run tellraw @p[tag=this] ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. It's not belongs to you.","color":"gold"}]
