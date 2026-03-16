
$execute as @p[nbt={UUID:$(Owner)}] run advancement grant @s only ketket_shops:sp_adv_2
$execute as @p[nbt={UUID:$(Owner)}] run tp @e[type=item,tag=earned] @s
