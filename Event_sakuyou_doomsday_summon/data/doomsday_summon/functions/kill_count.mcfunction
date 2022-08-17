### Copyright © 2022 よしたこ
### 規定秒数ごとに召喚ファンクションを呼び出すファンクション

#経過秒数が規定値であれば召喚実行
scoreboard players add @s doomsday.kill_count 1
advancement revoke @s only doomsday_summon:doomsday_kill