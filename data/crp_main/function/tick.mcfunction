#timer
execute if score $time_b time matches 1 if score $time_ms time matches 20 run scoreboard players remove $time time 1
execute if score $time_b time matches 1 if score $time_ms time matches 20 run scoreboard players reset $time_ms time
execute if score $time_b time matches 1 run scoreboard players add $time_ms time 1

#jail people
execute store result score $people jail if entity @a[tag=jail]