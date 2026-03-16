scoreboard players operation @s[tag=pricetext] product_pricedisp = @e[tag=main,sort=nearest,limit=1,type=interaction] product_price
scoreboard players operation @s[tag=producttext] product_countdisp = @e[tag=main,sort=nearest,limit=1,type=interaction] product_count
data modify entity @s[tag=pricetext] text set value [{text:"x"},{score:{name:"@s",objective:"product_pricedisp"}}]
data modify entity @s[tag=producttext] text set value [{text:"x"},{score:{name:"@s",objective:"product_countdisp"}}]

