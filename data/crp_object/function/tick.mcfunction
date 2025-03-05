#register execute 

# if there is a sneaking player in front of casher, then excute this
# レジスターの前にスニークしてるプレイヤーがいる場合、以下を実行
execute as @e[tag=register,tag=lock] at @s align xyz positioned ^ ^ ^1 if entity @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] run function crp_object:register/opening

# the player stopped sneaking then take "opening_casher" tag and blindness away
# レジスター前のプレイヤーがスニークをやめたらblindnessと"opening_casher"タグを取り去る
execute at @e[tag=register,tag=lock] align xyz positioned ^ ^ ^1 run effect clear @a[dx=0.5,dy=1,dz=0,predicate=!crp_object:register/shift,tag=opening_casher] blindness
execute at @e[tag=register] align xyz positioned ^ ^ ^1 run tag @a[dx=0.5,dy=1,dz=0,predicate=!crp_object:register/shift,tag=opening_casher] remove opening_casher
tellraw @a[dx=0,dy=0,dz=0] [{"color":"gold","translate":"You got "},{"interpret":false,"nbt":"money","storage":"crp_object:money"},{"translate":" Yens!"}]