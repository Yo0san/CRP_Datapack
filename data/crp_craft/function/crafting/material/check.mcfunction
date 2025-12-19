#Material Page check ID
#execute if items entity @s player.cursor 
#execute if items entity @s container.*
#Back To Home
execute if items entity @s player.cursor structure_void[custom_data~{Menu:256}] run function crp_craft:crafting/main/back/exe
execute if items entity @s container.* structure_void[custom_data~{Menu:256}] run function crp_craft:crafting/main/back/exe
#Material Test
execute if items entity @s player.cursor structure_void[custom_data~{M_Test:1}] run function crp_craft:crafting/material/test/exe
execute if items entity @s container.* structure_void[custom_data~{M_Test:1}] run function crp_craft:crafting/material/test/exe
#M_test
execute if items entity @s player.cursor crafting_table[custom_data~{C_Boolean:1}] run function crp_craft:crafting/material/test/crafting
execute if items entity @s container.* crafting_table[custom_data~{C_Boolean:1}] run function crp_craft:crafting/material/test/crafting