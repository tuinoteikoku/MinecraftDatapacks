# 疑似乱数生成
## 疑似乱数源用AEC生成
summon area_effect_cloud ~ ~ ~ {Age:1,Tags:["rng"]}
## 疑似乱数源取得
execute store result score #rng joan_rn run data get entity @e[tag=rng,limit=1] UUID[1]
## 疑似乱数演算
scoreboard players operation #rng joan_rn %= #rng joan_rn_c
