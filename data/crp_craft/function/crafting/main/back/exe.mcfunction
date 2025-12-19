#back to home
item replace entity @s player.cursor with air
clear @s *[custom_data~{Menu:256}]
playsound minecraft:block.crafter.craft master @s ~ ~ ~ 1 2
scoreboard players reset @s Crafting_Page
execute at @s as @e[type=chest_minecart,sort=nearest,limit=1,tag=Crafting,distance=..2] if score @s PlayerID = @p PlayerID run function crp_craft:crafting/main/init