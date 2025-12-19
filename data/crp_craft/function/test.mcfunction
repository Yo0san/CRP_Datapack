#サブティックのコマンド実行用エンティティ召喚
summon area_effect_cloud ~ ~10000 ~ {Duration:1,Age:-1,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:["copy_owner"]}
summon bat ~ ~10000 ~ {Tags:["subtick_pre"],NoAI:true,Health:1}
#本体召喚
summon creeper ~ ~11000 ~ {Fuse:0,PersistenceRequired:true}
summon area_effect_cloud ~ ~12000 ~ {Duration:1,Age:-1,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:["copy_owner"]}
summon bat ~ ~12000 ~ {Tags:["subtick_post"],NoAI:true,Health:1}

#AECをプレーヤーが放ったことにする
data modify storage : _ set from entity @s UUID
execute as @e[tag=copy_owner] run data modify entity @s Owner set from storage : _
tag @e remove copy_owner