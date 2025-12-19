$data modify entity @s Items append value {Slot:$(repeat),id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:custom_data":{AutoKill:1},"minecraft:custom_name":" "}}
scoreboard players remove $CraftClearRepeat Temp 1
execute if score $CraftClearRepeat Temp matches 17 run scoreboard players remove $CraftClearRepeat Temp 9
execute store result storage crp_craft:repeat repeat int 1 run scoreboard players get $CraftClearRepeat Temp
execute if score $CraftClearRepeat Temp matches 0.. run function crp_craft:crafting/place_air with storage crp_craft:repeat