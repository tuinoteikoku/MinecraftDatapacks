#
# Copyright © 2022 X_Soo_X
#
# @file   hitting_nether_fishing.mcfunction
# @brief  ネザー釣りにおけるヒット中更新処理
# @author X_Soo_X
# @detail ヒット状態になっている場合、こちらのFunctionを実行する
#         tickによって呼び出され続けることを想定
#

execute as @s run scoreboard players remove @s HittingTime 1
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run scoreboard players remove @s HittingTime 1
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run function nether_fishing:title/hit_fish
execute as @s if score @s HittingTime <= #NETHER_FISSHING_DEF_0 HittingTime run function nether_fishing:end_hitting_time
