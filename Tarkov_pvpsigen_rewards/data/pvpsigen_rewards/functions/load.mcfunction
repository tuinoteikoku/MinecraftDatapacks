### Copyright © 2022 よしたこ
### ゲーム読込時の初期化処理。

##スコアボード設定
scoreboard objectives add pvpsigen_reward.now_sec dummy
scoreboard objectives add pvpsigen_reward.max_sec dummy
scoreboard objectives add pvpsigen_reward.x dummy
scoreboard objectives add pvpsigen_reward.y dummy
scoreboard objectives add pvpsigen_reward.z dummy

##告知用ボスバー設定
bossbar add pvpsigen_rewards:notify "告知内容が表示されます"