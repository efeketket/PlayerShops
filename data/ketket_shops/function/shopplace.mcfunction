
setblock ~ ~1 ~ minecraft:air
#summon minecraft:interaction ~ ~0.10 ~ {Tags:["playershop","justspawn","interaction","noowner","main"],width:0.6f,height:0.6f,Passengers:[{id:"minecraft:item_display",Tags:["playershop","justspawn","shopdata"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_data":{Product:[{}],Price:[{}],StorageCheck:[{}],ValueHolder:[{}],PriceDisp:[{}],ProductDisp:[{}],SellingHolder:[{}],Skull:[{}]}},billboard:"center",interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,0.000f,0.000f, 0.550f, 0.000f,0.325f,0.000f, 0.000f, 0.550f,0.000f,0.000f, 0.000f, 1.000f,1.000f],view_range:0.70f}],Width:0.5f,Height:0.9f}
summon minecraft:interaction ~ ~0.10 ~ {Tags:["playershop","justspawn","interaction","noowner","main","empty"],Passengers:[{id:"minecraft:item_display",Tags:["playershop","justspawn","shopdata"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_data":{Product:[{}],Price:[{}],StorageCheck:[{}],ValueHolder:[{}],PriceDisp:[{}],ProductDisp:[{}],SellingHolder:[{}],Skull:[{}],OwnerHolder:[{}]}}},billboard:"center",interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,0.000f,0.000f, 0.550f, 0.000f,-0.250f,0.000f, 0.000f, 0.550f,0.000f,0.000f, 0.000f, 1.000f,1.000f],view_range:0.70f}],width:0.65f,height:0.65f}
summon minecraft:interaction ~ ~0.03 ~ {Tags:["playershop","justspawn","interaction1","platechanger"],width:0.9f,height:0.1f}

summon minecraft:block_display ~ ~0.51 ~ {Tags:["playershop","justspawn","interaction","wool"],Passengers:[],block_state:{Name:"minecraft:red_wool"},interpolation_duration:0,start_interpolation:0,transformation:[0.640f, 0.000f, 0.000f,-0.320f,0.000f, 0.100f, 0.000f,-0.450f,0.000f, 0.000f, 0.640f,-0.320f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.70f}
summon minecraft:block_display ~ ~0.43 ~ {Tags:["playershop","justspawn","glass"],Passengers:[],block_state:{Name:"minecraft:glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.650f, 0.000f, 0.000f,-0.325f,0.000f, 0.650f, 0.000f,-0.325f,0.000f, 0.000f, 0.650f,-0.325f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.70f}
summon minecraft:block_display ~ ~0.07 ~ {Tags:["playershop","justspawn","baseplate1","baseplate"],Passengers:[],block_state:{Name:"minecraft:quartz_block"},interpolation_duration:0,start_interpolation:0,transformation:[0.800f, 0.000f, 0.000f,-0.400f,0.000f, 0.100f, 0.000f,-0.050f,0.000f, 0.000f, 0.800f,-0.400f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.70f}
summon minecraft:block_display ~ ~0.05 ~ {Tags:["playershop","justspawn","baseplate2","baseplate"],Passengers:[],block_state:{Name:"minecraft:quartz_block"},interpolation_duration:0,start_interpolation:0,transformation:[0.850f, 0.000f, 0.000f,-0.425f,0.000f, 0.100f, 0.000f,-0.050f,0.000f, 0.000f, 0.850f,-0.425f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.70f}
summon minecraft:block_display ~ ~0.04 ~ {Tags:["playershop","justspawn","baseplate3","baseplate"],Passengers:[],block_state:{Name:"minecraft:quartz_block"},interpolation_duration:0,start_interpolation:0,transformation:[0.880f, 0.000f, 0.000f,-0.440f,0.000f, 0.060f, 0.000f,-0.030f,0.000f, 0.000f, 0.880f,-0.440f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.70f}

summon minecraft:text_display ~ ~0.34 ~ {Tags:["playershop","justspawn","pricetext"],text:"", see_through: 0b,background: 0,billboard:"center",interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,0.100f,0.000f, 0.500f, 0.000f,0.400f,0.000f, 0.000f, 0.500f,0.100f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
summon minecraft:item_display ~ ~0.34 ~ {Tags:["playershop","justspawn","priceimg"],item:{id:"minecraft:air",count:1s}, item_display:fixed,billboard:"center",interpolation_duration:0,start_interpolation:0,transformation:[0.270f, 0.000f, 0.000f,-0.120f,0.000f, 0.270f, 0.000f,0.565f,0.000f, 0.000f, 0.270f,-0.120f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
execute as @s[tag=west] run summon minecraft:text_display ~0.1 ~0.1 ~ {Tags:["playershop","justspawn","producttext"],text:"",background: 0,interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.000f, 0.500f,0.320f,0.000f, 0.500f, 0.000f,0.050f,-0.500f, 0.000f, 0.000f,-0.120f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
execute as @s[tag=east] run summon minecraft:text_display ~-0.1 ~0.1 ~ {Tags:["playershop","justspawn","producttext"],text:"",background: 0,interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.000f, -0.500f,-0.320f,0.000f, 0.500f, 0.000f,0.050f,0.500f, 0.000f, 0.000f,0.120f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
execute as @s[tag=south] run summon minecraft:text_display ~ ~0.1 ~-0.1 {Tags:["playershop","justspawn","producttext"],text:"",background: 0,interpolation_duration:0,start_interpolation:0,transformation:[-0.500f, 0.000f, 0.000f,-0.120f,0.000f, 0.500f, 0.000f,0.050f,-0.000f, 0.000f, -0.500f,-0.320f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
execute as @s[tag=north] run summon minecraft:text_display ~ ~0.1 ~0.1 {Tags:["playershop","justspawn","producttext"],text:"",background: 0,interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,0.120f,0.000f, 0.500f, 0.000f,0.050f,0.000f, 0.000f, 0.500f,0.320f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}
summon minecraft:text_display ~ ~0.34 ~ {Tags:["playershop","justspawn","displaytext"],text:"", see_through: 0b,background: 0,billboard:"center",interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,0.000f,0.000f, 0.500f, 0.000f,0.650f,0.000f, 0.000f, 0.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],view_range:0.3f}

#data modify entity @e[type=item_display,tag=justspawn,tag=shopdata,limit=1] item.components."minecraft:custom_data".Owner set from entity @p[scores={isPlaced=1}] UUID
#execute as @e[type=item_display,tag=justspawn,tag=shopdata,limit=1] run data modify entity @s item.components."minecraft:custom_data".OwnerHolder set from entity @s item.components."minecraft:custom_data".Owner

advancement grant @p[scores={isPlaced=1..}] only ketket_shops:sp_adv_3
scoreboard players operation @e[tag=justspawn,tag=playershop] unique_shopid = @p[scores={isPlaced=1}] unique_shopid

scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] totalstock_chestcount 1
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] totalstock 1728
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] totalstock_holder 1728
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] totalearn 0
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] currentstock 0
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] glass_dye 0
scoreboard players add @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] wool_dye 0

scoreboard players set @p[scores={isPlaced=1}] isPlaced 0
execute as @e[tag=justspawn] run tag @s remove justspawn
kill @s

