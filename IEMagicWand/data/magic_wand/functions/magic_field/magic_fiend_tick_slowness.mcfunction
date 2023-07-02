#
# Copyright © 2023 X_Soo_X
#
# @brief  鈍足フィールド魔法tick処理
# @author X_Soo_X
# @detail 実行者の半径5ブロック以内のプレイヤーに継続的に鈍足を追加する。
# @note   

execute at @s run effect give @a[distance=..5] slowness 3 1 true