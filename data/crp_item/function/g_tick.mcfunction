#Taser Guns
#all use process data is crp_rc:tick
execute as @a[scores={taser_effect=60..}] run function crp_item:guard_i/taser_gun/stop_effect
execute as @a[scores={taser_effect=1..}] at @s run function crp_item:guard_i/taser_gun/stun_time
execute at @e[tag=taser_hit] run particle dust{color:[0.000,0.000,0.000],scale:2} ~ ~ ~ 0.05 0.05 0.05 5 5 normal