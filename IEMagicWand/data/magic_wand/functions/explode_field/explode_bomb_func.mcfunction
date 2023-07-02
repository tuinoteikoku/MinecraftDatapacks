#
# Copyright © 2023 X_Soo_X
#
# @brief  範囲爆破処理コマンド
# @author X_Soo_X
# @detail 一定時間経った際に実行するFunction
# @note   
#particle explosion ~ ~ ~ ~ ~ ~
execute as @s at @s run particle explosion ~ ~1.5 ~ 0.1 0.1 0.1 0.02 5
execute as @s at @s run effect give @e[distance=..5] instant_damage 3 0
#毒エフェクト
execute at @s[scores={MagicID=102}] run effect give @e[distance=..5] poison 15 1
#浮遊エフェクト
execute at @s[scores={MagicID=104}] run effect give @e[distance=..5] levitation 15 1
playsound entity.generic.explode player @a ~ ~ ~
kill @s