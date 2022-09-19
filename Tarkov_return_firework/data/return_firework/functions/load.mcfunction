### Copyright © 2022 よしたこ
### 初期化処理

#各設定
scoreboard objectives add return_firework.count dummy
scoreboard objectives add return_firework.game_tick dummy
scoreboard objectives add return_firework.firework_num dummy
scoreboard players set #return_firework return_firework.game_tick 0
scoreboard players set #return_firework return_firework.firework_num 0

#実績削除
advancement revoke @a only return_firework:return_firework_use