#hit
scoreboard players reset @s bar_effective
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.2 2
attribute @s minecraft:movement_speed base set 0.001
attribute @s minecraft:jump_strength base set 0
effect give @s blindness 5 0 true
effect give @s unluck 5 0 false
tag @s add bar_hit