#
# Copyright © 2023 X_Soo_X
#
# @brief  フィールド魔法処理開始コマンド
# @author X_Soo_X
# @detail フィールド魔法開始時のタグ追加を行う
# @note   

#フィールド魔法タグ追加
tag @s add magic_field
#通常爆破サークルエフェクトタグ追加
tag @s[scores={MagicID=201}] add composter_circle
#毒爆破サークルエフェクトタグ追加
tag @s[scores={MagicID=202}] add composter_circle
#浮遊爆破サークルエフェクトタグ追加
tag @s[scores={MagicID=203}] add composter_circle