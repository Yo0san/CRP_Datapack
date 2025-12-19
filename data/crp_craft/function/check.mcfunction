#ID Check

#Material
execute if items entity @s player.cursor structure_void[custom_data~{Menu:0}] run function crp_craft:crafting/material/exe
execute if items entity @s container.* structure_void[custom_data~{Menu:0}] run function crp_craft:crafting/material/exe