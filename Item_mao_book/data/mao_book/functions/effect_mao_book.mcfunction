### Copyright © 2022 よしたこ
### 毛沢東語録の効果を与えるファンクション

#毛沢東語録を持っている場合は火炎耐性7が5秒つきます
execute at @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{MaoBookTag:1}}]}] run effect give @s minecraft:fire_resistance 5 7
#足元に炎を発生
setblock ~ ~ ~ fire
#自分にテキストを表示する
execute if entity @s[type=player] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{MaoBookTag:1}}]}] run tellraw @s {"text":"貴方に革命の炎が灯された！","color":"red"}
execute if entity @s[type=player] run execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{MaoBookTag:1}}]}] run tellraw @s {"text":"貴方にとって革命の火中は心地良い……","color":"red"}
#エフェクトを出します
particle minecraft:angry_villager ~ ~1 ~ 0 0 0 1 1
particle minecraft:flame ~ ~2 ~ 0.1 0.1 0.1 0.01 100
#hitタグを消す
tag @s remove mao_book_hit