#hit
advancement revoke @s only crp_item:guard_i/taser_gun/hit
effect give @s minecraft:unluck 3 255 false
effect give @s slowness 3 255 true
attribute @s jump_strength base set 0 
effect give @s blindness 3 0 true
effect give @s conduit_power 20 0 false
scoreboard players add @s taser_effect 1