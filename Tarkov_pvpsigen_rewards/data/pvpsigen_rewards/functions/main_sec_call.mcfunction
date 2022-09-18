### Copyright © 2022 よしたこ
### 各防具建て処理の呼び出し
### 最初に報酬設置済み防具建てがreward_delを実行、次に報酬未設置防具建てがreward_setを実行、最後にreward_initを実行

## [報酬設置済]防具建ての削除とチェスト削除
execute as @e[tag=reward_chest,tag=set] run function pvpsigen_rewards:reward_del

## [報酬未設置]防具建てへのチェスト設置
execute as @e[tag=reward_chest,tag=!set] run function pvpsigen_rewards:reward_set

## 新規防具建ての設置
function pvpsigen_rewards:reward_init