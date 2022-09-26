#
# Copyright © 2022 X_Soo_X
#
# @file   hit_nether_fishing.mcfunction
# @brief  ネザー釣り時、釣りがヒットした際の処理function
# @author X_Soo_X
# @detail ヒットした際にヒット状態の残り時間をプレイヤーに加算し、
#         その時間内に釣り竿を上げることで釣りに成功した扱いにして報酬を与える
#

execute as @s run tag @s add NowHitting
execute as @s run scoreboard players add @s HittingTime 30
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run playsound entity.player.levelup player @s ~ ~ ~
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run tag @s add NowHitting
execute as @a if score @s NetherFishingID = @e[type=fishing_bobber,limit=1,tag=NowFishing] NetherFishingID run scoreboard players set @s HittingTime 30