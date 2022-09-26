#
# Copyright © 2022 X_Soo_X
#
# @file   give_nether_fishing_rod.mcfunction
# @brief  ネザー釣り専用の釣り竿を与えるfunction
# @author X_Soo_X
# @detail ネザー釣り専用かどうかについてはnbtタグの"NetherFishingRodTag:1"で判定を行っている。
#         ネザー釣りのアイテムを編集したい場合は"NetherFishingRodTag:1"を忘れないこと

give @p fishing_rod{NetherFishingRodTag:1,display:{Name:'{"text":"地獄の釣り竿"}'},Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1