execute unless score @e[type=interaction,sort=nearest,limit=1,tag=main] currentstock matches 0 unless score @e[type=interaction,sort=nearest,limit=1,tag=main] totalearn matches 0 run return run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. There are incoming profits or stocked items.","color":"red"}]
execute unless score @e[type=interaction,sort=nearest,limit=1,tag=main] totalearn matches 0 run return run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. There are incoming profits.","color":"red"}]
execute unless score @e[type=interaction,sort=nearest,limit=1,tag=main] currentstock matches 0 run return run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. There are incoming stocked items.","color":"red"}]


execute if score @e[type=interaction,sort=nearest,limit=1,tag=main] currentstock matches 0 if score @e[type=interaction,sort=nearest,limit=1,tag=main] totalearn matches 0 run function ketket_shops:interactions/remove/removesucces


