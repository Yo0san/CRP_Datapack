#show recipe
#Reset
data remove entity @s Items
#put
data modify entity @s Items[{Slot:9b}] merge from storage crp_craft:material Item[0]
#Need Material
data modify entity @s Items[{Slot:12b}] merge from storage crp_craft:material Need[0]
#If you have it?
execute store result score $CraftHave Temp run clear @p[tag=OpenUI] iron_ingot 0
execute unless score $CraftHave Temp matches 1.. run data modify entity @s Items[{Slot:16b}] merge from storage crp_craft:craft_boolean Item[0]
execute if score $CraftHave Temp matches 1.. run data modify entity @s Items[{Slot:16b}] merge from storage crp_craft:craft_boolean Item[1]