#deleate 
item replace entity @s player.cursor with air
clear @s *[custom_data~{M_Test:1}]
execute at @s as @e[type=chest_minecart,sort=nearest,limit=1,tag=Crafting,distance=..2] if score @s PlayerID = @p PlayerID at @s run function crp_craft:crafting/material/test/show