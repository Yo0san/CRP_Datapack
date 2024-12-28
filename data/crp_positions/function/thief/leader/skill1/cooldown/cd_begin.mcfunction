#cooldown start
execute if score @s l_skill1_cd matches 799.. run function crp_positions:thief/leader/skill1/cooldown/cd_end
scoreboard players add @s l_skill1_cd 1