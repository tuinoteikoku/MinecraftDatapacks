### Copyright © 2022 よしたこ
### 設置した防具建て地点に報酬チェストに設置

## 防具建て位置のビーコンを消し、報酬チェストを設置
execute at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air 
execute at @s run setblock ~ ~ ~ chest{LootTable:"pvpsigen_rewards:reward_chest"}

## セット済みタグを追加
tag @s add set