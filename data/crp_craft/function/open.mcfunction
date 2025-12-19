# get Tags.
tag @s add OpenUI
scoreboard players reset @s Crafting_Page
execute anchored eyes positioned ~ ~1.1 ~ as @e[type=chest_minecart,tag=Crafting,distance=..1,limit=1,sort=nearest] run function crp_craft:init