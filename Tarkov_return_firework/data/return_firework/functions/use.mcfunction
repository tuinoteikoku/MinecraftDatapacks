### Copyright © 2022 よしたこ
### 発煙筒使用時の関数。条件が満たされている場合はuse_setに続く

#実績を消す
tellraw @s [{"text":"発煙筒を振った！"}]
advancement revoke @s only return_firework:return_firework_use

#周囲に防具建てが存在しない
execute unless entity @e[distance=..100,tag=return_firework] run tag @s add rf_distance_stand

#PVP資源ワールド中心から2000m以内で実施している
execute in minecraft:sigenpro run execute positioned 0 0 0 run execute as @a[distance=..2000,tag=rf_distance_stand] run tag @s add rf_distance_2000
#execute in minecraft:overworld run execute positioned 0 0 0 run execute as @a[distance=..2000,tag=rf_distance_stand] run tag @s add rf_distance_2000

#エラーメッセージ。発煙筒が返却される。
execute if entity @s[tag=!rf_distance_stand] run tellraw @s [{"text":"付近の発煙筒と混ざってしまうようだ…。あなたは使用を諦めた。"}]
execute if entity @s[tag=rf_distance_stand,tag=!rf_distance_2000] run tellraw @s [{"text":"ヘリから視認できない距離のようだ…。もっと中央に近づこう。"}]
execute unless entity @s[tag=rf_distance_stand,tag=rf_distance_2000] run function return_firework:give

#使用できる場合の処理
execute if entity @s[tag=rf_distance_stand,tag=rf_distance_2000] run function return_firework:use_set

#タグ外し
tag @s remove rf_distance_stand
tag @s remove rf_distance_2000