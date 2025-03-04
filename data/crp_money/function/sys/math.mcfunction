execute store result score @s h_money run clear @s minecraft:emerald[minecraft:custom_data={money:1}] 0
scoreboard players operation @s h_money *= $money goods
execute store result score @s h_teddy_bear run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data={teddy_bear:1}] 0
scoreboard players operation @s h_teddy_bear *= $teddy_bear goods
function crp_money:sys/total
advancement revoke @s only crp_money:sys/change