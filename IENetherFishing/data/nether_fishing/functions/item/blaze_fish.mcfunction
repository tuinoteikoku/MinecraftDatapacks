#
# Copyright © 2022 X_Soo_X
#
# @file   blaze_fish.mcfunction
# @brief  サンプル報酬の一つであるブレイズフィッシュを与えるfunction
# @author X_Soo_X
# @detail サンプル用なので実際の報酬はnether_fishing_table.jsonに書いてある
#
loot give @s loot nether_fishing:nether_fishing_table
give @p cooked_cod{display:{Name:'{"text":"ブレイズフィッシュ","color":"dark_red","bold":true}',Lore:['{"text":"特定サーバーのネザーに生息すると言われている魚。"}','{"text":"ブレイズとの関連性は不明"}']},CustomModelData:9001} 1