#taser gun rc
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{taser_gun:1}}}}] \
        at @s run function crp_item:guard_i/taser_gun/shot
#smoke bomb rc
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{smoke_bomb:1}}}}] \
    at @s run function crp_item:thief_i/smoke_bomb/throw