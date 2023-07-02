#
# Copyright © 2023 X_Soo_X
#
# @brief  魔法弾発射コマンド
# @author X_Soo_X
# @detail 魔法弾となるアーマースタンドを召喚し、
#         データタグに保存しているMagicIDをアーマースタンドのスコアに代入、
#         IDごとに処理を判断して実行している。
# @note   

# アーマースタンド召喚。magicalBallを魔法弾識別タグとして使用している。
execute as @a[scores={UseMagicWand=1..}] at @s run summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Marker:1b,Tags:["magicalBall"],Invisible:1b} 
# 魔法弾のライフタイム設定。
# 上空に撃つ等ブロックに当たらない場合を想定してライフタイムが切れ次第強制的に削除
execute at @s as @e[type=armor_stand,tag=magicalBall,distance=..2,limit=1] run scoreboard players set @s MagicBallLifeTime 200
# 持っている魔法の杖のMagicIDをアーマースタンドのMagicIDスコアに代入
execute at @s store result score @e[type=armor_stand,distance=..2,tag=magicalBall,limit=1] MagicID run data get entity @s SelectedItem.tag.MagicID
# プレイヤーの頭上に再配置
execute as @a[scores={UseMagicWand=1..}] at @s run tp @e[tag=magicalBall,limit=1,sort=nearest] ~ ~2 ~ ~ ~
# 魔法の杖の使用フラグをOffにする
execute as @a run scoreboard players reset @s UseMagicWand
