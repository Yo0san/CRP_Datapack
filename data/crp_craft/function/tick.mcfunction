#Replace function for Craft Icons.
#CraftChestSummon = Please spawn chest minecart only 1 for 1 player.
#detection have icon.
execute as @a[tag=!HaveCrafting,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{Craft:1}}}}] at @s run function crp_craft:summon
#When you don't have it, kill minecart.
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{Craft:1}}}}] at @s run function crp_craft:kill
#TP
execute at @a[tag=HaveCrafting] positioned ~ ~1.1 ~ as @e[type=text_display,tag=Crafting_Ride,distance=..2,limit=1] if score @s PlayerID = @p PlayerID run tp @s ^ ^ ^
#When click space item. cleaning click items and place before status.
execute as @a at @s run function crp_craft:air
execute as @e[distance=..1,type=item,nbt={Item:{components:{"minecraft:custom_data":{AutoKill:1}}}}] run function crp_craft:crafting/clear_space
#click menu
execute as @a run function crp_craft:check
execute as @a[scores={Crafting_Page=1..}] run function crp_craft:crafting/material/check