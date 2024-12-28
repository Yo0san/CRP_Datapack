#RightClick execute
execute as @a[scores={wrc=1..}] at @s run function crp_rc:execute
execute as @a[scores={wrc=1..}] at @s run scoreboard players reset @s wrc