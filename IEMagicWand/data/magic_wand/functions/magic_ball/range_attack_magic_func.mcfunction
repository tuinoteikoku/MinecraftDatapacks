#
# Copyright © 2023 X_Soo_X
#
# @brief  魔法弾着弾処理
# @author X_Soo_X
# @detail IDの範囲事に叩くFunctionを変更している。

particle explosion ~ ~1.5 ~ 0.1 0.1 0.1 0.02 5
#IDが99以下の場合は通常魔法なのでそのまま削除
execute as @s[scores={MagicID=..99}] run kill @s
#IDが100~199を範囲爆破魔法として扱う
execute as @s[scores={MagicID=100..199}] run function magic_wand:explode_field/explode_start_func
#IDが200~299をフィールド魔法として扱う
execute as @s[scores={MagicID=200..299}] run function magic_wand:magic_field/magic_field_start_func
#魔法弾タグ削除
tag @s remove magicalBall
