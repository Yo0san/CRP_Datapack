#menu_storage
#Home
data modify storage crp_craft:home_ico Item set value [{id: "minecraft:structure_void", count: 1, components: {"minecraft:custom_name": {italic: 0b, translate: "Back to Home", color: "white"}, "minecraft:item_model": "crp:menu/home", "minecraft:custom_data": {Menu: 256, AutoKill: 1}}}]
#Back
data modify storage crp_craft:back_ico Item set value [{id: "minecraft:structure_void", count: 1, components: {"minecraft:custom_name": {italic: 0b, translate: "Back", color: "white"}, "minecraft:item_model": "crp:menu/back", "minecraft:custom_data": {Menu: 255, AutoKill: 1}}}]
#Next
data modify storage crp_craft:next_ico Item set value [{id: "minecraft:structure_void", count: 1, components: {"minecraft:custom_name": {italic: 0b, translate: "Next", color: "white"}, "minecraft:item_model": "crp:menu/next", "minecraft:custom_data": {Menu: 254, AutoKill: 1}}}]
#Material
data modify storage crp_craft:material_ico Item set value [{id: "minecraft:structure_void", count: 1, components: {"minecraft:custom_name": {italic: 0b, translate: "Material", color: "white"}, "minecraft:item_model": "crp:menu/material", "minecraft:custom_data": {Menu: 0, AutoKill: 1}}}] 
data modify storage crp_craft:material Item set value [{id:"structure_void",count:1,components:{"minecraft:custom_name":{italic:0b,translate:"HogeHoge",color:"white"},"minecraft:item_model":"crp:wip","minecraft:custom_data":{M_Test:1,AutoKill:1}}}]
data modify storage crp_craft:material Need set value [{id:"iron_ingot",count:1,components:{custom_data:{AutoKill:1,Sample:0}}}]

#false Items
data modify storage crp_craft:craft_boolean Item set value [\
{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_data":{Autokill:1,C_Boolean:0},"minecraft:custom_name":{"color":"red","italic":false,"translate":"You don't have enough need Items!"}}},\
{id:"crafting_table",count:1,components:{"minecraft:custom_data":{Autokill:1,C_Boolean:1},"minecraft:custom_name":{"color":"green","italic":false,"translate":"Crafting!"}}}\
]