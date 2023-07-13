execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:2b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:3b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:4b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:11b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:12b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:13b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:20b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:21b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:22b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{ketket_shop:1b}}] run summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["returneditem"]}
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{ketket_shop:1b}}] run data modify entity @e[type=item,tag=returneditem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:15b}]
execute as @a[tag=menuopener,distance=..8] if score @s unique_shopid = @e[type=interaction,limit=1,sort=nearest,tag=main] unique_shopid run tp @e[tag=returneditem,distance=..2] @s
execute as @s[tag=page2] if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{ketket_shop:1b}}] run tag @e[type=item,tag=returneditem,sort=nearest,limit=1] remove returneditem

kill @e[tag=returneditem]

#data modify entity @e[tag=selleditem,sort=nearest,limit=1] Item set from entity @e[type=item,tag=shopdata,sort=nearest,limit=1] Item.tag.Product