#monies
effect clear @a[tag=register_opener] blindness
execute store result storage crp_object:money money int 1 as @a[tag=register_opener] run random value 1..10
loot give @a[tag=register_opener] loot crp_item:thief_i/register_money
tellraw @a[tag=register_opener] [{"color":"gold","translate":"You got "},{"interpret":false,"nbt":"money","storage":"crp_object:money"},{"translate":"0000 Yens!"}]
#Register Sounds
playsound block.iron_door.open block @a ~ ~ ~ 0.5 2
#Register Deactivetion.
scoreboard players reset @s register_opening
tag @s remove lock
data merge entity @s {item:{id:"minecraft:vault",count:1,components:{"minecraft:item_model":"crp:register_opened"}}}
tag @a[tag=register_opener] remove register_opener