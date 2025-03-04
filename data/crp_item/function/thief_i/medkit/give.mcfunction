effect give @s instant_health 1 50 true
scoreboard players reset @s medkit_using
advancement revoke @s only crp_item:thief_i/medkit/shift
execute unless entity @s[tag=developer] run item replace entity @s weapon.mainhand with air