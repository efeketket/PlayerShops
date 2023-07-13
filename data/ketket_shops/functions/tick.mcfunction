execute as @e[nbt=!{SelectedItem:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1431137794,275073127,-2022788867,-1955600531],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjMzZjOWNiNTBhNTI3YWE1NTYwN2EwZGY3MTg1YWQyMGFhYmFhOTAzZThkOWFiZmM3ODI2MDcwNTU0MGRlZiJ9fX0="}]}}}}},type=player,tag=placeshop] at @s run function ketket_shops:detection
execute as @e[tag=placeshop,type=player] at @s run function ketket_shops:detection
execute as @e[nbt=!{SelectedItem:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1431137794,275073127,-2022788867,-1955600531],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjMzZjOWNiNTBhNTI3YWE1NTYwN2EwZGY3MTg1YWQyMGFhYmFhOTAzZThkOWFiZmM3ODI2MDcwNTU0MGRlZiJ9fX0="}]}}}}},type=player,tag=placeshop] run tag @s remove placeshop
execute as @e[nbt={SelectedItem:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1431137794,275073127,-2022788867,-1955600531],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjMzZjOWNiNTBhNTI3YWE1NTYwN2EwZGY3MTg1YWQyMGFhYmFhOTAzZThkOWFiZmM3ODI2MDcwNTU0MGRlZiJ9fX0="}]}}}}},type=player] at @s run tag @s add placeshop

#claim check
execute as @e[type=interaction,tag=playershop,tag=main,tag=noowner] at @s on target run function ketket_shops:interactions/claimshop

#remove check
execute as @e[type=interaction,tag=playershop,tag=main] at @s on attacker if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run function ketket_shops:interactions/remove/remove 
execute as @e[type=interaction,tag=playershop,tag=main] at @s on attacker run execute as @s[tag=shop_admin] run function ketket_shops:interactions/remove/remove 
execute as @e[type=interaction,tag=playershop,tag=main] at @s on attacker unless score @s[tag=!shop_admin] unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. It's not belongs to you.","color":"gold"}]

#stock check
execute as @e[type=interaction,tag=playershop,tag=main,tag=!noowner] at @s on target if score @s Sneaking_ps matches 1 unless score @s unique_shopid = @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] unique_shopid run function ketket_shops:display/stockinfo

#selling
execute as @e[type=interaction,tag=playershop,tag=main,tag=!empty,tag=!noowner] at @s on target if score @s Sneaking_ps matches 0 if data entity @s SelectedItem unless score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run function ketket_shops:selling/sellcheck


#open menu
execute as @e[type=interaction,tag=playershop,tag=main] at @s on target if score @s[tag=menuopener] Sneaking_ps matches 0 if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't open the shop menu while another shop menu is already open. Please close the existing one.","color":"red"}]
execute as @e[type=interaction,tag=playershop,tag=main] at @s on target if score @s[tag=!menuopener] Sneaking_ps matches 0 if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run function ketket_shops:menu/openingmenu
execute as @e[type=interaction,tag=menuon,tag=playershop] at @s run function ketket_shops:menu/placemenu

#cosmetic changer

#plate
execute as @e[type=interaction,tag=platechanger] at @s on target if data entity @s SelectedItem if score @s Sneaking_ps matches 1 if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run function ketket_shops:display/platechanger
execute as @e[type=interaction,tag=platechanger] at @s on target unless data entity @s SelectedItem if score @s Sneaking_ps matches 1 if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run execute as @e[type=interaction,tag=playershop,tag=main,limit=1,sort=nearest,distance=..1] run function ketket_shops:display/woolchanger
execute as @e[type=interaction,tag=playershop,tag=platechanger] at @s run data remove entity @s interaction


#glass
execute as @e[type=interaction,tag=playershop,tag=main] at @s on target unless data entity @s SelectedItem if score @s Sneaking_ps matches 1 if score @s unique_shopid = @e[tag=interaction,tag=playershop,sort=nearest,limit=1,distance=..1] unique_shopid run execute as @e[type=interaction,tag=playershop,tag=main,limit=1,sort=nearest,distance=..1] run function ketket_shops:display/glasschanger

execute as @e[type=interaction,tag=playershop,tag=main] at @s run data remove entity @s attack
execute as @e[type=interaction,tag=playershop,tag=main] at @s run data remove entity @s interaction


execute as @a[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] run function ketket_shops:menu/guicleaner
execute as @a[nbt={Inventory:[{tag:{ketket_shop_text:1b}}]},tag=!menuopener] run clear @s minecraft:writable_book{ketket_shop_text:1b}
execute as @a[nbt={Inventory:[{tag:{ketket_shop_text:1b}}]},tag=!menuopener] run clear @s minecraft:written_book{ketket_shop_text:1b}
execute as @e[type=item,nbt={Item:{tag:{ketket_shop:1b}}}] at @s run kill @s

execute as @e[tag=playershop,type=interaction,scores={currentstock=0}] at @s run tag @s add empty

scoreboard players set @a[scores={Sneaking_ps=1..}] Sneaking_ps 0

