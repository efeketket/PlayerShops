kill @e[tag=playershop]
tag @a remove menuopener 
tag @a remove customer 

scoreboard objectives remove totalearn
scoreboard objectives remove totalearn_msg
scoreboard objectives remove totalstock
scoreboard objectives remove totalstock_holder
scoreboard objectives remove totalstock_upgrade
scoreboard objectives remove totalstock_chestcount
scoreboard objectives remove totalstock_chestcount_holder
scoreboard objectives remove currentstock
scoreboard objectives remove currentstock_msg
scoreboard objectives remove unique_shopid
scoreboard objectives remove boolean_shop
scoreboard objectives remove product_price
scoreboard objectives remove product_count
scoreboard objectives remove product_countholder
scoreboard objectives remove pay_price
scoreboard objectives remove return_price
scoreboard objectives remove product_pricedisp
scoreboard objectives remove product_countdisp
scoreboard objectives remove glass_dye
scoreboard objectives remove carpet_dye
scoreboard objectives remove wool_dye
scoreboard objectives remove shop_page
scoreboard objectives remove Sneaking_ps 
scoreboard objectives remove math.division
scoreboard objectives remove isPlaced 


tellraw @a ["","[",{"text":"Player Shop","color":"red"},"]"," Ketket's Player Shops succesfully uninstalled. You can disable it."]