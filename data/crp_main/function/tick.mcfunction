#flow Item kill.
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{AutoKill:1}}}}] at @s run kill @s
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{AutoKill:1}}}]}] run clear @s *[custom_data={AutoKill:1}]
#When join player that don't have player ID, Place PlayerID
execute unless score @s PlayerID matches 0.. run function crp_main:id_set
#timer If the $time_ms scoreboard exceeds 20, reduce $time by 1.And reset $time_ms
execute if score $time_b time matches 1 if score $time_ms time matches 20.. run scoreboard players remove $time time 1
execute if score $time_b time matches 1 if score $time_ms time matches 20.. run scoreboard players reset $time_ms time
execute if score $time_b time matches 1 run scoreboard players add $time_ms time 1
#BossBar
bossbar set thief_bossbar name [{"text":"\uE101"},{"text": "\uF822"},{"translate":"Time: "},{"score": {"name":"$time","objective":"time" }},{"translate": "sec"},{"text": "\uF824"},{"text": "\uE102"},{"text": "\uF822"},{"translate": "Thief: "},{"score": {"name": "$thief","objective": "player"}}] 
bossbar set guard_bossbar name [{"text":"\uE101"},{"text": "\uF822"},{"translate": "Time: "},{"score": {"name": "$time","objective": "time"}},{"translate": "sec"}]
#jail people
execute store result score $people jail if entity @a[tag=jail]