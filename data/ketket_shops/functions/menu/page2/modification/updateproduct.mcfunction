scoreboard players set @s boolean_shop 0
tag @s remove productupdateing

execute if data block ~ ~ ~ Items[{Slot:22b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:22b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:21b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:21b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:20b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:20b}].tag.RepairCost set value 11

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:13b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:12b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:12b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:11b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:11b}].tag.RepairCost set value 11

execute if data block ~ ~ ~ Items[{Slot:4b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:4b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:3b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:3b}].tag.RepairCost set value 11
execute if data block ~ ~ ~ Items[{Slot:2b}].tag.RepairCost run data modify block ~ ~ ~ Items[{Slot:2b}].tag.RepairCost set value 11

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:22b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:22b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:21b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:20b}].id

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:13b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:12b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:11b}].id

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:4b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:3b}].id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:2b}].id


execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:22b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:22b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:21b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:21b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:20b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:20b}].tag

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:13b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:13b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:12b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:12b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:11b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:11b}].tag

execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:4b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:4b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:3b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:3b}].tag
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run execute if data block ~ ~ ~ Items[{Slot:2b}].tag run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:2b}].tag




execute unless data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run data modify storage productfaceholder Product set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.id
execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag run tag @s add taggedproduct
execute unless data storage productfaceholder Producttag[{}] run tag @s add taggedproduct
execute as @s[tag=taggedproduct] unless data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run data modify storage productfaceholder Producttag set from entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product.tag


execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:2b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:2b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:3b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:3b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:4b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:4b}].tag

execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:11b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:11b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:12b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:12b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:13b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:13b}].tag

execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:20b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:20b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:21b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:21b}].tag
execute as @s[tag=taggedproduct] if data block ~ ~ ~ Items[{Slot:22b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Producttag set from block ~ ~ ~ Items[{Slot:22b}].tag


execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{}}] run scoreboard players set @s boolean_shop 1

execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{}}] run scoreboard players set @s boolean_shop 1

execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{}}] run scoreboard players set @s boolean_shop 1
execute as @s[tag=taggedproduct] if score @s boolean_shop matches 0 if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{}}] run scoreboard players set @s boolean_shop 1


execute if data block ~ ~ ~ Items[{Slot:2b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:2b}].id
execute if data block ~ ~ ~ Items[{Slot:3b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:3b}].id
execute if data block ~ ~ ~ Items[{Slot:4b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:4b}].id

execute if data block ~ ~ ~ Items[{Slot:11b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:11b}].id
execute if data block ~ ~ ~ Items[{Slot:12b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:12b}].id
execute if data block ~ ~ ~ Items[{Slot:13b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:13b}].id

execute if data block ~ ~ ~ Items[{Slot:20b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:20b}].id
execute if data block ~ ~ ~ Items[{Slot:21b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:21b}].id
execute if data block ~ ~ ~ Items[{Slot:22b}] if score @s boolean_shop matches 0 store result score @s boolean_shop run data modify storage productfaceholder Product set from block ~ ~ ~ Items[{Slot:22b}].id

execute if score @s boolean_shop matches 0 run execute unless data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run function ketket_shops:menu/page2/modification/overwriteproduct
execute if score @s boolean_shop matches 0 run execute if data entity @e[type=item_display,sort=nearest,limit=1,tag=shopdata] item.tag.Product[{}] run function ketket_shops:menu/page2/modification/newproduct

data modify storage productfaceholder Product set value [{}]
data modify storage productfaceholder Producttag set value [{}]

tag @s[tag=taggedproduct] remove taggedproduct

execute if score @s boolean_shop matches 1 run tellraw @p[nbt={Inventory:[{tag:{ketket_shop:1b}}]}] ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" Product items must be the same.","color":"red"}]

