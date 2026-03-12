#Create Soap
#summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["Soap","Soap_AS","BeforeTP"],DisabledSlots:4144959}
#summon item_display ~ ~ ~ {item_display:"none",Tags:["Soap","Soap_Display","BeforeTP"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"crp:soap"}}}
#summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["Soap","Soap_AS","BeforeTP"],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Silent:1b,item_display:"none",Tags:["Soap","Soap_Display","BeforeTP"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,2.3f],scale:[1f,1f,1f]},item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"crp:soap"}}}]}
#The Idea by koma. thx.
playsound entity.egg.throw block @a ~ ~ ~ 1 0 0
summon armor_stand ^ ^0.5 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["Soap","Soap_AS","BeforeTP"],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item_display:"none",Tags:["Soap","Soap_Display","BeforeTP"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"crp:soap"}}}]}
execute as @e[type=armor_stand,tag=BeforeTP] run function crp_main:entityid_set
scoreboard players operation @e[type=item_display,tag=BeforeTP] EntityID = @e[type=armor_stand,tag=BeforeTP] EntityID
#The Idea by YK. thx.
execute rotated as @s run rotate @e[type=armor_stand,tag=BeforeTP,limit=1,sort=nearest] ~ 0
#rotate @e[tag=BeforeTP,sort=nearest,limit=1] facing entity @s
#Remove Tag (Multiple Use.)
tag @e[tag=BeforeTP] remove BeforeTP
execute unless entity @s[tag=Developer] run item replace entity @s weapon.mainhand with minecraft:air
#execute at @e[tag=Test_E,limit=1,sort=nearest] if entity @a[distance=..1] run say hogehoge