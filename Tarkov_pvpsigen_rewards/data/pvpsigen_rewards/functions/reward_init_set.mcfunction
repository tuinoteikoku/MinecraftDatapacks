### Copyright © 2022 よしたこ
### 設置した防具建ての各種設定

##ランダムな1000m範囲に飛ばし、forceloadで強制読み込みチャンク対象とする
spreadplayers 0 0 1 1000 true @s
execute at @s run forceload add ~-2 ~-2 ~2 ~2

## 防具建ての座標取得(Posはdouble型のためそのまま表示は難しい。int型に返還する)
execute store result score #pvpsigen_reward pvpsigen_reward.x run data get entity @s Pos[0]
execute store result score #pvpsigen_reward pvpsigen_reward.y run data get entity @s Pos[1]
execute store result score #pvpsigen_reward pvpsigen_reward.z run data get entity @s Pos[2]

## 発生地点にビーコンとブロック設置
execute at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 barrier
execute at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 diamond_block
execute at @s run setblock ~ ~1 ~ beacon