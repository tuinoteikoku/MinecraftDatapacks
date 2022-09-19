### Copyright © 2022 よしたこ
### 発煙筒防具建てが脱出時刻になった場合の処理

#脱出効果音
execute at @s run playsound minecraft:item.firecharge.use block @a[distance=..4]

#近くにいるプレイヤーに脱出成功を告げて
execute at @s run tellraw @a[distance=..4] [{"text":"脱出に成功した！"}]

#TPする(座標はヘリ)
execute at @s run tp @a[distance=..4] 8 301 8

#自分を削除する
scoreboard players remove #return_firework return_firework.firework_num 1
forceload remove ~-2 ~-2 ~2 ~2
kill @s