### Copyright © 2022 よしたこ
### 設置サイクル停止処理。処理を止めます。

## 最大時刻を0に。処理が停止します。
scoreboard players set #pvpsigen_reward pvpsigen_reward.max_sec 0

## 防具建て情報の削除
execute at @e[tag=reward_chest] run forceload remove ~-1 ~-1 ~1 ~1
kill @e[tag=reward_chest]

## ボスバー(告知)の削除
bossbar set pvpsigen_rewards:notify visible false