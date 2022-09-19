### Copyright © 2022 よしたこ
### エンチャントレベル20相当のエンチャントを実行するfunction
### 短い処理なのでべた書きしています

#本を所有していることの確認
execute if entity @s[nbt={Inventory:[{id:"minecraft:book"}]}] run tag @s add eb_lv

#レベルが特定の数値以上であることを確認
execute if entity @s[level=2..] run tag @s add eb_book

#ラピスラズリを特定数以上所有していることの確認
execute store result score @s Enchanter_book.lapis_num run clear @s minecraft:lapis_lazuli 0
execute if score @s Enchanter_book.lapis_num matches 2.. run tag @s add eb_lps

#エラーメッセージ。発煙筒が返却される。
execute if entity @s[tag=!eb_lv] run tellraw @s [{"text":"[システム]レベルが足りません！"}]
execute if entity @s[tag=!eb_book] run tellraw @s [{"text":"[システム]本を持っていません！"}]
execute if entity @s[tag=!eb_lps] run tellraw @s [{"text":"[システム]ラピスラズリが足りません！"}]

#使用できる場合の処理
execute if entity @s[tag=eb_lv,tag=eb_book,tag=eb_lps] run loot give @s loot enchanter_book:enchant_level_20
execute if entity @s[tag=eb_lv,tag=eb_book,tag=eb_lps] run xp add @s -2 levels
execute if entity @s[tag=eb_lv,tag=eb_book,tag=eb_lps] run clear @s lapis_lazuli 2
execute if entity @s[tag=eb_lv,tag=eb_book,tag=eb_lps] run clear @s book 1

execute if entity @s[tag=eb_lv,tag=eb_book,tag=eb_lps] run function enchanter_book:enchant_level_effect

#タグ外し
tag @s remove eb_lv
tag @s remove eb_book
tag @s remove eb_lps