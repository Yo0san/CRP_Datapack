#effective
execute if score @s bar_effective matches 99.. \
run function crp_item:thief_i/bar/remove_effect
scoreboard players add @s bar_effective 1