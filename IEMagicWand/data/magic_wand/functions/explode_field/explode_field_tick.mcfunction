#
# Copyright © 2023 X_Soo_X
#
# @brief  範囲爆破魔法Tick処理
# @author X_Soo_X
# @detail 毎Tick処理を行うことを想定。
#         explode_fieldタグが付いたアーマースタンドを爆破中心として処理を行う。
#         タイマーを更新していき一定以上経てば爆破を実行する流れ。

#タイマー更新
execute as @e[type=armor_stand,tag=explode_field] run scoreboard players add @s BombDelay 1
# タイマーが一定以上になった場合に爆破処理を行う
execute as @e[type=armor_stand,tag=explode_field] if score @s BombDelay >= CONST_BOMB_DELAY_60 BombDelay run function magic_wand:explode_field/explode_bomb_func