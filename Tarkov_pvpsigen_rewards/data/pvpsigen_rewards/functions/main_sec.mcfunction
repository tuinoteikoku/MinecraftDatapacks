### Copyright © 2022 よしたこ
### 時刻処理とボスバー(告知)の更新
### 次回設置までの残り秒数が0になった場合、main_sec_callを実行。

## 残り秒数が0秒の場合は、main_sec_call実行
execute if score #pvpsigen_reward pvpsigen_reward.now_sec matches 0 run function pvpsigen_rewards:main_sec_call
## 残り秒数が0秒の場合は、MAX秒まで回復
execute if score #pvpsigen_reward pvpsigen_reward.now_sec matches 0 run scoreboard players operation #pvpsigen_reward pvpsigen_reward.now_sec = #pvpsigen_reward pvpsigen_reward.max_sec
## 残り秒数を1秒減らす
scoreboard players remove #pvpsigen_reward pvpsigen_reward.now_sec 1

## ボスバー(告知)の更新
execute store result bossbar pvpsigen_rewards:notify value run scoreboard players get #pvpsigen_reward pvpsigen_reward.now_sec
execute store result bossbar pvpsigen_rewards:notify max run scoreboard players get #pvpsigen_reward pvpsigen_reward.max_sec
bossbar set pvpsigen_rewards:notify name [{"text":"支援物資投下まで"},{"score":{"name":"#pvpsigen_reward","objective":"pvpsigen_reward.now_sec"}},{"text":"秒 "},{"text":"次回座標:X="},{"score":{"name":"#pvpsigen_reward","objective":"pvpsigen_reward.x"}},{"text":"\u0020Y="},{"score":{"name":"#pvpsigen_reward","objective":"pvpsigen_reward.y"}},{"text":"\u0020Z="},{"score":{"name":"#pvpsigen_reward","objective":"pvpsigen_reward.z"}}]

## PVP資源ワールドの中央座標から範囲内に存在するプレイヤーにボスバー(告知)を表示
#execute in minecraft:overworld run execute positioned 0 0 0 run bossbar set pvpsigen_rewards:notify players @a[distance=..2000]
execute in minecraft:sigenpro run execute positioned 0 0 0 run bossbar set pvpsigen_rewards:notify players @a[distance=..2000]

