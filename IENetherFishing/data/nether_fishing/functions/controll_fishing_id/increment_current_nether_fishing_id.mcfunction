#
# Copyright © 2022 X_Soo_X
#
# @file   increment_current_nether_fishing_id.mcfunction
# @brief  ネザー釣りIDの繰り上げを行う
# @author X_Soo_X
# @detail 誰がどの浮きで釣りを行っているかの判定をネザー釣りIDを用いて行う。
#         その性質上、ネザー釣りIDはユニークである必要があるため、ネザー釣りIDを
#         配布した後にこのfunctionを呼び出し、1繰り上げていく。
# @note   ロジックの都合上、ネザー釣りの最大値以上の人数で同時にネザー釣りを行うとバグる可能性あり。
#         ……まぁ最大値が99999なので10万人同時接続出ない限り起きないとは思うが

scoreboard players add #CURRENT_NETHER_FISHING_ID NetherFishingID 1
#MAX_NETHER_FISHING_ID(ネザー釣りIDの最大値)まで到達した場合、リセットする
execute if score #CURRENT_NETHER_FISHING_ID NetherFishingID > #MAX_NETHER_FISHING_ID NetherFishingID run function nether_fishing:controll_fishing_id/reset_current_nether_fishing_id