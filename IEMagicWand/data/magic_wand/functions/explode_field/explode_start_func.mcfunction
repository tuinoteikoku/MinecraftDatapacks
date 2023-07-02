#
# Copyright © 2023 X_Soo_X
#
# @brief  爆破魔法開始処理
# @author X_Soo_X
# @detail アーマースタンドに必要なタグを付与していく。
# @note   

tag @s add explode_field
#通常爆破サークルエフェクト
tag @s[scores={MagicID=101}] add composter_circle
#毒爆破サークルエフェクト
tag @s[scores={MagicID=102}] add composter_circle
#浮遊爆破サークルエフェクト
tag @s[scores={MagicID=104}] add composter_circle