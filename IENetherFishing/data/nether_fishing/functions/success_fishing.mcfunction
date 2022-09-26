#
# Copyright © 2022 X_Soo_X
#
# @file   success_fishing.mcfunction
# @brief  ネザー釣りが成功した際に実行するfunction
# @author X_Soo_X
# @detail 釣りが成功した際のメッセージやlootによる報酬獲得を行う
#

title @s actionbar {"text":"\u91e3\u308a\u3042\u3052\u305f\uff01","bold":true,"color":"dark_blue"}
loot give @s loot nether_fishing:nether_fishing_table
tag @s remove NowHitting
scoreboard players reset @s HittingTime
playsound entity.player.levelup player @s ~ ~ ~