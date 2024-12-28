#実行者 -> コマンドを実行するエンティティ
#実行座標 -> コマンドを実行するエンティティ


#矢の召喚
execute anchored eyes run summon arrow ^ ^ ^1 {life:1200s,damage:0.1d,Tags:["taser_gun","taser_hit"]}

#アマスタの召喚-アマスタの召喚位置が(0.0,0.0,0.0)から離れる程に矢の速度は大きくなります
execute rotated as @s positioned 0.09 0.0 0.09 run summon minecraft:armor_stand ^ ^ ^1 {Tags:["taser_Motion"],Marker:1b,Invisible:1b}

#矢のMotionにアマスタのPosを代入
execute as @e[tag=taser_gun] run data modify entity @s Motion set from entity @e[tag=taser_Motion,limit=1] Pos

#矢のOwnerに実行者のUUIDを代入
data modify entity @e[tag=taser_gun,limit=1] Owner set from entity @s UUID

#アマスタのキル
kill @e[tag=taser_Motion]

#タグ除去
tag @e[tag=taser_gun] remove taser_gun
#SE
playsound block.dispenser.launch player @s ~ ~ ~ 1 2
execute unless entity @s[tag=developer] run item replace entity @s weapon.mainhand with air