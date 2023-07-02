#
# Copyright © 2023 X_Soo_X
#
# @brief  通常魔法弾処理
# @author X_Soo_X
# @detail 
# @note   

#ダメージ処理(共通)
execute at @s run effect give @e[distance=..1.5] instant_damage 1 0

#毒エフェクト処理
execute at @s[scores={MagicID=2}] run effect give @e[distance=..1] poison 10 0 false 