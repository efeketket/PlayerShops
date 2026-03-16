data modify entity @e[type=block_display,tag=baseplate1,limit=1,sort=nearest,distance=..1] block_state.Name set from entity @s SelectedItem.id
data modify entity @e[type=block_display,tag=baseplate2,limit=1,sort=nearest,distance=..1] block_state.Name set from entity @s SelectedItem.id
data modify entity @e[type=block_display,tag=baseplate3,limit=1,sort=nearest,distance=..1] block_state.Name set from entity @s SelectedItem.id

execute as @e[type=block_display,tag=baseplate,distance=..1,nbt={block_state:{Name:"minecraft:air"}}] run data modify entity @s block_state.Name set value "minecraft:quartz_block" 