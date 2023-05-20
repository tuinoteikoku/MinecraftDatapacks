# 各ジョブ選択者がいるか(joan_as,wo,fa,na)
execute as @a[tag=joan_as,tag=joan_play] run function joan_system:ability_as
execute as @a[tag=joan_wo,tag=joan_play] run function joan_system:ability_wo
execute as @a[tag=joan_fa,tag=joan_play] run function joan_system:ability_fa
execute as @a[tag=joan_na,tag=joan_play] run function joan_system:ability_na

# 試合タイマーカウントダウン(Score:joan_timer)
scoreboard players remove @e[type=armor_stand,tag=joan_timer] joan_timer 1

# ゲーム終了条件が満たされたか
execute as @a[scores={joan_live=1},tag=joan_play] run function joan_system:reward
## 生き残りが１人になったら終了
execute as @e[type=armor_stand,tag=joan_timer,scores={joan_timer=0}] run function joan_system:reward

## 注:新しくJobを追加した際は[#各ジョブ選択者がいるか]の下に追加する事