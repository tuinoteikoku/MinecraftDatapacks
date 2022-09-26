#
# Copyright © 2022 X_Soo_X
#
# @file   start_nether_fishing.mcfunction
# @brief  ネザー釣り開始処理
# @author X_Soo_X
# @detail ネザー釣りIDを浮きとプレイヤーに割り振り、釣り状態にする。
#         ネザー釣りIDはユニークである(他プレイヤーと被らない)ことを想定している。

execute at @s run tag @e[type=fishing_bobber] add NowFishing

#釣りIDを浮きとプレイヤーに割り当てる.
execute at @s store result score @e[type=fishing_bobber,limit=1,sort=nearest] NetherFishingID run scoreboard players get #CURRENT_NETHER_FISHING_ID NetherFishingID 
execute as @s store result score @s NetherFishingID run scoreboard players get #CURRENT_NETHER_FISHING_ID NetherFishingID 
function nether_fishing:controll_fishing_id/increment_current_nether_fishing_id