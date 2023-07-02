#
# Copyright © 2023 X_Soo_X
#
# @brief  魔法弾更新処理
# @author X_Soo_X
# @detail 魔法弾の移動や着弾判定などを行う。
# @note   

execute as @e[type=armor_stand,tag=magicalBall] at @s run tp ^ ^ ^1.0
#パーティクル処理
execute as @e[tag=magicalBall] at @s run particle flame ~ ~1.5 ~ 0.1 0.1 0.1 0.02 5
#着弾しなかった場合に備えてライフタイムを設けて対応
execute as @e[tag=magicalBall,scores={MagicBallLifeTime=1..}] run scoreboard players remove @s MagicBallLifeTime 1
#ダメージ処理
#MagicIDが99以下のものを通常魔法弾として処理を行う
execute as @e[tag=magicalBall,scores={MagicID=..99}] run function magic_wand:magic_ball/magic_ball_func
#着弾
execute as @e[tag=magicalBall] at @s if predicate magic_wand:is_in_not_air run function magic_wand:magic_ball/range_attack_magic_func
