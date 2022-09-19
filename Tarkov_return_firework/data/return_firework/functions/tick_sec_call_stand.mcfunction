### Copyright © 2022 よしたこ
### 発煙筒防具建てに対する毎秒処理

#カウント処理
scoreboard players remove @s return_firework.count 1
execute if score @s return_firework.count matches ..0 run function return_firework:return

#周囲のプレイヤーに残り時間通知
execute at @s run title @a[distance=..4] actionbar [{"text":"発煙筒範囲です。脱出まであと"},{"score":{"name":"@s","objective":"return_firework.count"}},{"text":"秒 "}]

#パーティクル発生
execute at @s run particle minecraft:flame ~ ~0.5 ~ 0 0.3 0 0.01 50