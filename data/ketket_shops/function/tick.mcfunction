##> place shop
execute as @a[nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{shopcase:1b}}}}] run function ketket_shops:placer
execute as @a[scores={isPlaced=1..}] unless data entity @s SelectedItem run function ketket_shops:placer

##> click checkers
execute as @e[tag=playershop,tag=main,type=interaction] at @s run function ketket_shops:tickshop

##> fixers
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{ketket_shop:1b}}}]}] run function ketket_shops:menu/guicleaner

scoreboard players enable @a ket.place 
execute as @a[scores={ket.place=1..}] run function ketket_shops:fixplace
scoreboard players set @p[scores={isPlaced=2..}] isPlaced 0

execute as @e[nbt={Item:{components:{"minecraft:custom_data":{ketket_shop:1b}}}},type=item] at @s run kill @s
execute as @e[type=player,scores={Sneaking_ps=1..}] run scoreboard players set @s Sneaking_ps 0
