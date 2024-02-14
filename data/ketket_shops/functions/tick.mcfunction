##> place shop
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1431137794,275073127,-2022788867,-1955600531],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjMzZjOWNiNTBhNTI3YWE1NTYwN2EwZGY3MTg1YWQyMGFhYmFhOTAzZThkOWFiZmM3ODI2MDcwNTU0MGRlZiJ9fX0="}]}}}}}] at @s run tag @s add placeshop
execute as @e[type=player,tag=placeshop] at @s run function ketket_shops:placeshop

##> click checkers
execute as @e[type=interaction,tag=playershop,nbt={interaction:{}}] at @s run function ketket_shops:click/right
execute as @e[type=interaction,tag=playershop,nbt={attack:{}}] at @s run function ketket_shops:click/left

##> menu tick
execute as @e[type=interaction,tag=menuon,tag=playershop] at @s run function ketket_shops:menu/placemenu

##> fixers
execute as @e[type=player,nbt={Inventory:[{tag:{ketket_shop:1b}}]}] run function ketket_shops:menu/guicleaner
execute as @e[type=item,nbt={Item:{tag:{ketket_shop:1b}}}] at @s run kill @s
execute as @e[type=player,scores={Sneaking_ps=1..}] run scoreboard players set @s Sneaking_ps 0


