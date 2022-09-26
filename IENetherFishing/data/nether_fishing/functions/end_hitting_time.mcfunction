#
# Copyright © 2022 X_Soo_X
#
# @file   end_hitting_time.mcfunction
# @brief  釣り終了function
# @author X_Soo_X
# @detail ヒット状態のまま、制限時間を越えた場合に実行される。
#         獲物に逃げられた旨の情報を知らせ、ネザー釣りを終了させる

execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run tag @s remove NowHitting
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run title @s actionbar {"text":"\u9003\u3052\u3089\u308c\u305f\u2026\u2026","bold":true,"color":"yellow"}
kill @s
