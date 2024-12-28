#leader skill1 cd
execute as @a \
    if entity @s[advancements={crp_positions:thief/leader/skill1/a_use = true}] run \
        function crp_positions:thief/leader/skill1/cooldown/cd_begin
#leader skill2
scoreboard players operation $diff player -= $jail player
execute if score $diff player matches -2..-1 as @a[tag=leader] run function crp_positions:thief/leader/skill2/stage1
execute if score $diff player matches -3.. as @a[tag=leader] run function crp_positions:thief/leader/skill2/stage2
execute if score $diff player matches 3 as @a[tag=leader] run function crp_positions:thief/leader/skill2/stage3