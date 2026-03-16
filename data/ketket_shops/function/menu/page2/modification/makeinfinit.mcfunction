#loot replace block ~ ~ ~ container.9 loot ketket_shops:infinite_stock_disabled
loot replace block ~ ~ ~ container.9 loot ketket_shops:infinite_stock_disabled
execute as @s[tag=inf] run return run tag @s remove inf

loot replace block ~ ~ ~ container.9 loot ketket_shops:infinite_stock_enabled
tag @s add inf





