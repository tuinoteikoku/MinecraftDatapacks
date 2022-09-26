#
# Copyright © 2022 X_Soo_X
#
# @file   tick_nether_fishing.mcfunction
# @brief  ネザー釣りのtick処理
# @author X_Soo_X
# @detail tick.jsonによって常時実行されるfunction
#         釣り竿の左クリックや、釣り状態の更新などを行う
#
execute as @a[predicate=nether_fishing:is_in_nether] if predicate nether_fishing:is_used_nether_fishing_rod run function nether_fishing:start_nether_fishing
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run function nether_fishing:update/update_nether_fishing
execute as @a[tag=NowHitting] if score @s HittingTime > #NETHER_FISSHING_DEF_0 HittingTime unless entity @e[type=fishing_bobber,limit=1,tag=NowFishing] run function nether_fishing:success_fishing

execute as @a run scoreboard players reset @s RightClick_fishing_rod
