#実行者 -> コマンドを実行するエンティティ
#実行座標 -> コマンドを実行するエンティティ


#矢の召喚
execute anchored eyes run summon snowball ^ ^ ^1 {HasVisualFire:1b,Tags:["smoke_bomb","smoke_throw"],Passengers:[{id:"minecraft:marker",Tags:["smoke_bomb_marker"]}],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":1}}}

#アマスタの召喚-アマスタの召喚位置が(0.0,0.0,0.0)から離れる程に矢の速度は大きくなります
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1 {Tags:["smoke_Motion"],Marker:1b,Invisible:1b}

#矢のMotionにアマスタのPosを代入
execute as @e[tag=smoke_bomb] run data modify entity @s Motion set from entity @e[tag=smoke_Motion,limit=1] Pos 

#矢のOwnerに実行者のUUIDを代入
data modify entity @e[tag=smoke_bomb,limit=1] Owner set from entity @s UUID

#アマスタのキル
kill @e[tag=smoke_Motion]

#タグ除去
tag @e[tag=smoke_bomb] remove smoke_bomb
#SE
playsound entity.snowball.throw player @s ~ ~ ~ 1 2
execute unless entity @s[tag=developer] run item replace entity @s weapon.mainhand with air