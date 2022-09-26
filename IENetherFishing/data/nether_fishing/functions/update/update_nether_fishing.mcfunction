#
# Copyright © 2022 X_Soo_X
#
# @file   update_nether_fishing.mcfunction
# @brief  ネザー釣り中の更新処理
# @author X_Soo_X
# @detail 毎tick呼ばれることを想定。
#         ヒットしていない場合(tag=!NowHitting)はnether_fishing:update/loot_nether_fishing_hitでヒットするかどうかを判定し、
#         ヒットしている場合(tag=NowHitting)はnether_fishing:update/hitting_nether_fishingでヒット中の処理を行う

execute as @e[type=fishing_bobber,tag=NowFishing,tag=!NowHitting] at @s if block ~ ~ ~ minecraft:lava run function nether_fishing:update/loot_nether_fishing_hit
execute as @e[type=fishing_bobber,tag=NowFishing,tag=NowHitting] at @s if block ~ ~ ~ minecraft:lava run execute as @s run function nether_fishing:update/hitting_nether_fishing