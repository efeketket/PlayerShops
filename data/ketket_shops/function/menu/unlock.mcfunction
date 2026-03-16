data modify block ~ ~ ~ lock set value {count:65}
$execute as @p[scores={Sneaking_ps=1},nbt={UUID:$(Owner)}] run data remove block ~ ~ ~ lock
say hi