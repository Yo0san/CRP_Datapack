tag @s add meds_3
scoreboard players set @s meds_t 1
execute if entity @s[tag=meds_1,tag=meds_2,tag=meds_3] run function crp_stage:med_s/opendoor