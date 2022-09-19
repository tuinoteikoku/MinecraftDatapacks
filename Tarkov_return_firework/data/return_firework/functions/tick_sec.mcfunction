### Copyright © 2022 よしたこ
### 時刻処理。1秒ごとにtick_sec_callを呼び出す。

scoreboard players add #return_firework return_firework.game_tick 1
execute if score #return_firework return_firework.game_tick matches 20.. run function return_firework:tick_sec_call
execute if score #return_firework return_firework.game_tick matches 20.. run scoreboard players set #return_firework return_firework.game_tick 0