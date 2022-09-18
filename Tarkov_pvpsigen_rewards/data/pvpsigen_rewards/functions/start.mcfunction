### Copyright © 2022 よしたこ
### 設置サイクル開始処理。この処理を実行することでスタートします。終了する場合はstopを実行してください。

##時間設定
scoreboard players set #pvpsigen_reward pvpsigen_reward.now_sec 0
scoreboard players set #pvpsigen_reward pvpsigen_reward.max_sec 3600

##ボスバー(告知)セット
execute store result bossbar pvpsigen_rewards:notify value run scoreboard players get #pvpsigen_reward pvpsigen_reward.now_sec
execute store result bossbar pvpsigen_rewards:notify max run scoreboard players get #pvpsigen_reward pvpsigen_reward.max_sec
bossbar set pvpsigen_rewards:notify visible true

##設置
function pvpsigen_rewards:main