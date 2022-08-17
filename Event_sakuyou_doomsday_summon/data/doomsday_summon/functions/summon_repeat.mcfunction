### Copyright © 2022 よしたこ
### 規定秒数ごとに召喚ファンクションを呼び出すファンクション

#経過秒数が規定値であれば召喚実行
execute if score #doomsday_summon doomsday.now_sec >= #doomsday_summon doomsday.max_sec run function doomsday_summon:summon

#経過秒数管理
execute if score #doomsday_summon doomsday.now_sec >= #doomsday_summon doomsday.max_sec run scoreboard players set #doomsday_summon doomsday.now_sec -1
scoreboard players add #doomsday_summon doomsday.now_sec 1 

#ステージが1以上ならば継続
execute if score #doomsday_summon doomsday.stage matches 1.. run schedule function doomsday_summon:summon_repeat 1s