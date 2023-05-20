## 各ジョブ選択者がいるか(joan_as,wo,fa,na) ※1
execute as @a[tag=joan_as,tag=joan_play] run function joan_system:ability_as
execute as @a[tag=joan_wo,tag=joan_play] run function joan_system:ability_wo
execute as @a[tag=joan_fa,tag=joan_play] run function joan_system:ability_fa
execute as @a[tag=joan_na,tag=joan_play] run function joan_system:ability_na

## 試合タイマーカウントダウン(Score:joan_timer) ※2
scoreboard players remove @e[type=armor_stand,tag=joan_timer] joan_timer 1

## ゲーム終了条件が満たされたか ※3
execute as @a[scores={joan_live=1},tag=joan_play] run function joan_system:reward
### 生き残りが１人になったら終了
execute as @e[type=armor_stand,tag=joan_timer,scores={joan_timer=0}] run function joan_system:reward
### 制限時間が来たら

## 死亡時の上位3位の順位の保存(Score:joan_ticket) ※4
execute as @a[tag=joan_play,scores={joan_live=3}] run scoreboard players set @s joan_live 1
execute as @a[tag=joan_play,scores={joan_live=2}] run scoreboard players set @s joan_live 2
execute as @a[tag=joan_play,scores={joan_live=1}] run scoreboard players set @s joan_live 3

## 死亡したか ※5
execute as @a[scores={joan_death=1}] run gamemode spectator @s

## (※1) 新しくJobを追加した際は[#各ジョブ選択者がいるか]の下に追加する事