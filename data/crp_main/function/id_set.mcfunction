#Player Id setting functions
scoreboard players add #World PlayerID 1
scoreboard players operation @s PlayerID = #World PlayerID
#UUID[0] getting.
execute store result score @s UUID run data get entity @s UUID[0]