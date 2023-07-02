#
# Copyright © 2023 X_Soo_X
#
# @brief  コンポスターの円パーティクル表示コマンド
# @author X_Soo_X
# @detail とりあえず範囲がわかるように表示

execute at @s run tp @s ~ ~ ~ ~21 ~
execute at @s run particle minecraft:composter ^ ^1.6 ^5 0 0 0 1 1 force
execute at @s run particle minecraft:composter ^ ^1.6 ^-5 0 0 0 1 1 force
execute at @s run particle minecraft:composter ^5 ^1.6 ^ 0 0 0 1 1 force
execute at @s run particle minecraft:composter ^-5 ^1.6 ^ 0 0 0 1 1 force