#bar hit.tick
execute as @a[tag=bar_hit] at @s run function crp_item:thief_i/bar/effective_time
#adone_injecter pricking
execute as @a[predicate=crp_item:thief_i/adone_stim/use] at @s run function crp_item:thief_i/adone_stim/prick
execute as @a[scores={p_adone_stim=1..}] at @s \
    if score @s p_adone_stim matches 60 run function crp_item:thief_i/adone_stim/gave_effect
execute as @a[predicate=!crp_item:thief_i/adone_stim/use] at @s run function crp_item:thief_i/adone_stim/prick_stop
#medkit
execute as @a if predicate crp_item:thief_i/medkit/shift at @s run advancement grant @s only crp_item:thief_i/medkit/shift
execute as @a[tag=use.treat] unless predicate crp_item:thief_i/medkit/shift at @s run function crp_item:thief_i/medkit/cancel
#smoke bomb
execute as @e[type=marker,tag=smoke_bomb_marker] unless predicate crp_item:thief_i/smoke_bomb/marker at @s run function crp_item:thief_i/smoke_bomb/bomb
execute as @e[type=marker,tag=smoke] at @s run function crp_item:thief_i/smoke_bomb/smoke
#envelope
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:bundle",components:{"minecraft:custom_data":{envelope:1}}}]}] run function crp_item:thief_i/envelope/take
#money has