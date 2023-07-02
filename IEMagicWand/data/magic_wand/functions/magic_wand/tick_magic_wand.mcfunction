#
# Copyright © 2023 X_Soo_X
#
# @brief  魔法の杖Tickコマンド
# @author X_Soo_X
# @detail 右クリック検知。常時実行されることを想定

#right_clickが1以上かつ指定アイテムを持っていた場合に発動させる
execute as @a if predicate magic_wand:is_used_magic_wand run function magic_wand:magic_wand/logic_magic_wand
