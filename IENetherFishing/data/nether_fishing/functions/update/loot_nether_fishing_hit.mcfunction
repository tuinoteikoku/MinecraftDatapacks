#
# Copyright © 2022 X_Soo_X
#
# @file   loot_nether_fishing_hit.mcfunction
# @brief  ネザー釣りの抽選Function
# @author X_Soo_X
# @detail 毎Tick呼び出されることを想定
#

execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run function nether_fishing:title/current_fishing
execute as @s if predicate nether_fishing:chance_01 run function nether_fishing:hit_nether_fishing