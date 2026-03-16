function ketket_shops:menu/modification/returnitems
execute as @s at @s run data modify block ~ ~ ~ Items set value []

scoreboard players add @s shop_page 1

execute as @s[scores={shop_page=1}] run tag @s add page2
execute as @s[scores={shop_page=1}] run tag @s remove page1

execute as @s[scores={shop_page=2}] run tag @s remove page2
execute as @s[scores={shop_page=2}] run tag @s add page1
execute as @s[scores={shop_page=2}] run scoreboard players set @s shop_page 0

tag @s add setup

