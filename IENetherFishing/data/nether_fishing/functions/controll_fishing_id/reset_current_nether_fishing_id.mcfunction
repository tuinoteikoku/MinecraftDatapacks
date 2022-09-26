#
# Copyright © 2022 X_Soo_X
#
# @file   reset_current_nether_fishing_id.mcfunction
# @brief  ネザー釣りIDのリセットを行う
# @author X_Soo_X
# @detail デバッグ用。基本的に動作中に呼び出さない
#

execute store result score #CURRENT_NETHER_FISHING_ID NetherFishingID run scoreboard players get #MIN_NETHER_FISHING_ID NetherFishingID