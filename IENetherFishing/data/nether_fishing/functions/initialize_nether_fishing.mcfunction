#
# Copyright © 2022 X_Soo_X
#
# @file   initialize_nether_fishing.mcfunction
# @brief  ネザー釣り初期化処理
# @author X_Soo_X
# @detail 本データパックを導入した際に一番最初に実行することを想定。
#         こちらのfunctionを実行しなければ想定外の動作を引き起こす可能性があるため要注意
#

scoreboard objectives add RightClick_fishing_rod minecraft.used:fishing_rod
scoreboard objectives add NetherFishingID dummy
scoreboard objectives add HittingTime dummy
scoreboard players set #NETHER_FISSHING_DEF_0 HittingTime 0
scoreboard players set #CURRENT_NETHER_FISHING_ID NetherFishingID 1
scoreboard players set #MAX_NETHER_FISHING_ID NetherFishingID 99999
scoreboard players set #MIN_NETHER_FISHING_ID NetherFishingID 1