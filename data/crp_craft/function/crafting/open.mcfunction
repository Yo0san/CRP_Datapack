#General
function crp_craft:open
#If spawn minecart who Same Score, Run put menu to this.
# PlaySound
playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 2
#execute positioned ~ ~1.1 ~ as @e[type=interaction,distance=..1.1,limit=1,sort=nearest] positioned ~ ~-1.1 ~ run function crp_craft:crafting/init
#Advancement Reset
advancement revoke @s only crp_craft:open_crafting