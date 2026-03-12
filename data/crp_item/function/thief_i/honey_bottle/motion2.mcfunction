#実行者 -> コマンドを実行するエンティティ
#実行座標 -> コマンドを実行するエンティティ


#矢の召喚
execute anchored eyes run summon snowball ^ ^ ^1 {HasVisualFire:1b,Tags:["Honey_B_Marking","Honey_B_throw"],Passengers:[{id:"minecraft:marker",Tags:["Honey_B_marker"]}],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"crp:smokebomb"}}}

#アマスタの召喚-アマスタの召喚位置が(0.0,0.0,0.0)から離れる程に矢の速度は大きくなります
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["Honey_B_Motion"],Marker:1b,Invisible:1b}

#矢のMotionにアマスタのPosを代入
execute as @e[tag=Honey_B_Marking] run data modify entity @s Motion set from entity @e[tag=Honey_B_Motion,limit=1] Pos 

#矢のOwnerに実行者のUUIDを代入
data modify entity @e[tag=Honey_B_Marking,limit=1] Owner set from entity @s UUID

#アマスタのキル
kill @e[tag=Honey_B_Motion]

#タグ除去
tag @e[tag=Honey_B_Marking] remove Honey_B_Marking
#SE
playsound entity.snowball.throw player @s ~ ~ ~ 1 2
execute unless entity @s[tag=Developer] run item replace entity @s weapon.mainhand with air