tag @s add HaveCrafting
summon text_display ~ ~0.25 ~ {NoGravity:1b,Silent:1b,view_range:0f,shadow_radius:0f,shadow_strength:0f,teleport_duration:0,Tags:["Crafting_Ride"], \
Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["Crafting"],DisplayState:{Name:"minecraft:barrier",Properties:{waterlogged:"false"}}}]}
execute at @s as @e[type=text_display,tag=Crafting_Ride,distance=..1,limit=1,sort=nearest] run scoreboard players operation @s PlayerID = @p PlayerID
execute at @s as @e[type=text_display,tag=Crafting_Ride,distance=..1,limit=1,sort=nearest] on passengers run scoreboard players operation @s PlayerID = @e[type=text_display,tag=Crafting_Ride,distance=..1,limit=1,sort=nearest] PlayerID