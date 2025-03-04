#1F meds secret zone door execute
execute as @a at @s if predicate crp_stage:med_s/see_meds1 run function crp_stage:med_s/clearsd1
execute as @a at @s if predicate crp_stage:med_s/see_meds2 run function crp_stage:med_s/clearsd2
execute as @a at @s if predicate crp_stage:med_s/see_meds3 run function crp_stage:med_s/clearsd3
execute as @a[tag=meds_1,tag=meds_3] at @s if predicate crp_stage:med_s/see_meds3 run function crp_stage:med_s/faired_sd
execute as @a[scores={meds_t=1..}] run scoreboard players add @s meds_t 1
execute as @a[scores={meds_t=61..}] run function crp_stage:med_s/clearmed_t
#Mc'donalds Sink
execute if block 128 21 194 minecraft:stone_button[powered=true,facing=south] if score $mc_sink1_score stagescore matches 0 run function crp_stage:mcd_s/button_on
execute if block 128 21 194 minecraft:stone_button[powered=true,facing=south] if score $mc_sink1_score stagescore matches 1 run function crp_stage:mcd_s/button_off
#2
execute if block 130 21 194 minecraft:stone_button[facing=south,powered=true] if score $mc_sink2_score stagescore matches 0 run function crp_stage:mcd_s/sink2/button_on
execute if block 130 21 194 minecraft:stone_button[facing=south,powered=true] if score $mc_sink2_score stagescore matches 1 run function crp_stage:mcd_s/sink2/button_off