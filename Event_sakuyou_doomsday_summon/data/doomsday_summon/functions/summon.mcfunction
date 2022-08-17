### Copyright © 2022 よしたこ
### 召喚前に必ず実行する処理のファンクション

#ダイス実行＆取得(Ai_math使用)
function #math:dice
execute store result score #doomsday_summon doomsday.random run data get storage math: out.sum

#防具建てから召喚を実行(毎tickじゃない＆タグ制御だからそこまで負荷は掛からないハズ…)
execute if score #doomsday_summon doomsday.stage matches 1 run execute as @e[tag=doomsday_stand] run function doomsday_summon:summon_stage1
execute if score #doomsday_summon doomsday.stage matches 2 run execute as @e[tag=doomsday_stand] run function doomsday_summon:summon_stage2
execute if score #doomsday_summon doomsday.stage matches 3 run execute as @e[tag=doomsday_stand] run function doomsday_summon:summon_stage3