tag @s remove HaveCrafting
tag @e[type=chest_minecart,limit=1,sort=nearest,tag=Crafting] add TempKill
execute as @e[tag=TempKill] on vehicle run tag @s add TempKill
execute as @e[tag=TempKill] run data remove entity @s Items
scoreboard players reset @e[tag=TempKill] PlayerID
execute positioned ~ ~1.1 ~ as @e[tag=TempKill] at @s run function crp_craft:kill_all