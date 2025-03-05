#register opening

# ↓↓↓ レジスターの前にスニークしてるプレイヤーがいる場合、以下を実行 ↓↓↓

# adding timer score
# レジスターが持ってるタイマースコアを加算
scoreboard players add @s register_opening 1

# the player sneaking in front of casher, given blindness and the tag "opening_casher"
# レジスター前のスニークしているプレイヤーにblindnessと"opening_casher"タグを付与
execute as @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] run effect give @s blindness infinite 0 true
tag @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] add opening_casher

# register opening times process. (10sec)
# レジスター前のスニークしているプレイヤーに解錠の進捗バーを表示
execute if score @s register_opening matches 0.. as @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] run title @s times 0 20 0
execute if score @s register_opening matches 0..19 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||||||||||","color":"gray"}]
execute if score @s register_opening matches 20..39 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" |","color": "yellow"},{"text":"|||||||||","color":"gray"}]
execute if score @s register_opening matches 40..59 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||","color": "yellow"},{"text":"||||||||","color":"gray"}]
execute if score @s register_opening matches 60..79 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" |||","color": "yellow"},{"text":"|||||||","color":"gray"}]
execute if score @s register_opening matches 80..99 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||||","color": "yellow"},{"text":"||||||","color":"gray"}]
execute if score @s register_opening matches 100..119 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" |||||","color": "yellow"},{"text":"|||||","color":"gray"}]
execute if score @s register_opening matches 120..139 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||||||","color": "yellow"},{"text":"||||","color":"gray"}]
execute if score @s register_opening matches 140..159 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" |||||||","color": "yellow"},{"text":"|||","color":"gray"}]
execute if score @s register_opening matches 160..179 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||||||||","color": "yellow"},{"text":"||","color":"gray"}]
execute if score @s register_opening matches 180..199 run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" |||||||||","color": "yellow"},{"text":"|","color":"gray"}]
execute if score @s register_opening matches 200.. run title @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] title [{"text":"\uE100"},{"text":" ||||||||||","color": "yellow"}]
execute if score @s register_opening matches 200.. run tag @a[dx=0,dy=0,dz=0,predicate=crp_object:register/shift] add register_opener
execute if score @s register_opening matches 200.. run function crp_object:register/open
#Sounds
execute if score @s register_opening matches 20 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 40 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 60 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 80 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 100 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 120 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 140 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 160 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
execute if score @s register_opening matches 180 run playsound minecraft:block.chain.hit master @a ~ ~ ~ 0.5 2
