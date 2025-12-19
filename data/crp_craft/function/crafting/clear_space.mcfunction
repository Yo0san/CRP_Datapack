#要らないとこをクリックした時
item replace entity @s player.cursor with air
execute if items entity @s weapon.mainhand *[custom_data={AutoKill:1}] run item replace entity @s weapon.offhand with air
clear @s *[custom_data={AutoKill:1}]
#init
scoreboard players set $CraftClearRepeat Temp 26
data merge storage crp_craft:repeat {repeat:26}
execute as @e[tag=Crafting,type=chest_minecart,limit=1,sort=nearest] run function crp_craft:crafting/place_air with storage crp_craft:repeat