### Copyright © 2022 よしたこ
### 1秒ごとに繰り返し実行されるメイン関数。
### main_secを実行する

## [設置時刻]が設定されている場合、main_secを呼び出し、1秒後に再度実行する
execute unless score #pvpsigen_reward pvpsigen_reward.max_sec matches 0 run function pvpsigen_rewards:main_sec
execute unless score #pvpsigen_reward pvpsigen_reward.max_sec matches 0 run schedule function pvpsigen_rewards:main 1s