execute if score @s Sneaking_ps matches 1 run function ketket_shops:display/stockinfo
execute if score @s Sneaking_ps matches 0 if data entity @s SelectedItem run function ketket_shops:selling/sellcheck
execute if score @s Sneaking_ps matches 0 unless data entity @s SelectedItem run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Invaild payment item.","color":"red"}]