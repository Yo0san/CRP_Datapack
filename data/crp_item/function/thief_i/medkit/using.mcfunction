#using process
tag @s add use.treat
scoreboard players add @s medkit_using 1
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
#using subtitles
execute if score @s medkit_using matches 1..19 run function crp_item:thief_i/medkit/title0
execute if score @s medkit_using matches 20..39 run function crp_item:thief_i/medkit/title1
execute if score @s medkit_using matches 40..59 run function crp_item:thief_i/medkit/title2
execute if score @s medkit_using matches 60..79 run function crp_item:thief_i/medkit/title3
execute if score @s medkit_using matches 80..99 run function crp_item:thief_i/medkit/title4
execute if score @s medkit_using matches 100..119 run function crp_item:thief_i/medkit/title5
execute if score @s medkit_using matches 120..139 run function crp_item:thief_i/medkit/title6
execute if score @s medkit_using matches 140..158 run function crp_item:thief_i/medkit/title7
execute if score @s medkit_using matches 159 run function crp_item:thief_i/medkit/title8
#Sounds
execute if score @s medkit_using matches 1 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 20 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 30 run playsound minecraft:block.chest.open player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 40 run playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 1.2 0.84
execute if score @s medkit_using matches 40 run playsound minecraft:item.crossbow.loading_middle player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 60 run playsound minecraft:item.honey_bottle.drink player @s ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 80 run playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 1.2 0.84
execute if score @s medkit_using matches 100 run playsound minecraft:entity.item_frame.rotate_item player @a ~ ~ ~ 1.5 0.8
execute if score @s medkit_using matches 110 run playsound minecraft:entity.item_frame.rotate_item player @a ~ ~ ~ 1.5 0.8
execute if score @s medkit_using matches 120 run playsound minecraft:entity.item_frame.rotate_item player @a ~ ~ ~ 1.5 0.8
execute if score @s medkit_using matches 130 run playsound minecraft:block.chest.close player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 140 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 159 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 159 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.2 2
execute if score @s medkit_using matches 159 as @s at @s run function crp_item:thief_i/medkit/give
#advancement revoke
advancement revoke @s only crp_item:thief_i/medkit/shift