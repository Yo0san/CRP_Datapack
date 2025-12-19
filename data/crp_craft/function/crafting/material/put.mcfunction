#Reset
data remove entity @s Items
#Put
data modify entity @s Items[{Slot:0b}] merge from storage crp_craft:material Item[0]
data modify entity @s Items[{Slot:26b}] merge from storage crp_craft:home_ico Item[0]
data modify entity @s Items[{Slot:25b}] merge from storage crp_craft:next_ico Item[0]
data modify entity @s Items[{Slot:24b}] merge from storage crp_craft:back_ico Item[0]