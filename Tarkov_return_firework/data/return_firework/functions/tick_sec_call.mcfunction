### Copyright © 2022 よしたこ
### 発煙筒防具建てを呼び出してtick_sec_call_standを実行する

#発煙筒防具建てが存在しない場合は処理終了
#execute in minecraft:overworld run execute positioned 0 0 0 run execute unless entity @e[distance=..2000,type=armor_stand,tag=return_firework] run scoreboard players set #return_firework return_firework.game_tick 0
execute in minecraft:sigenpro run execute positioned 0 0 0 run execute unless entity @e[distance=..2000,type=armor_stand,tag=return_firework] run scoreboard players set #return_firework return_firework.game_tick 0

#発煙筒防具建てが存在する場合は各種処理実施
#execute in minecraft:overworld run execute positioned 0 0 0 run execute as @e[distance=..2000,type=armor_stand,tag=return_firework] run function return_firework:tick_sec_call_stand
execute in minecraft:sigenpro run execute positioned 0 0 0 run execute as @e[distance=..2000,type=armor_stand,tag=return_firework] run function return_firework:tick_sec_call_stand