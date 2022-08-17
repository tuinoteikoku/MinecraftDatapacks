### Copyright © 2022 よしたこ
### 初期化設定用ファンクション

scoreboard objectives add doomsday.stage dummy
scoreboard objectives add doomsday.now_sec dummy
scoreboard objectives add doomsday.max_sec dummy
scoreboard objectives add doomsday.random dummy
scoreboard objectives add doomsday.kill_count dummy "崩壊 撃破数"

#
scoreboard players set #doomsday_summon doomsday.stage 0
scoreboard players set #doomsday_summon doomsday.now_sec 0
scoreboard players set #doomsday_summon doomsday.max_sec 5
scoreboard players set #doomsday_summon doomsday.random 1

#乱数用ダイス設定(Ai_math使用)
data modify storage math: in set value [1,6]