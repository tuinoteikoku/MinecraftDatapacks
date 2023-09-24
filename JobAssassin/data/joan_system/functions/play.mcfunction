## 各ジョブ選択者がいるか(joan_as,wo,fa,na) ※1
execute as @a[tag=joan_as,tag=joan_play] run function joan_system:ability_as
execute as @a[tag=joan_wo,tag=joan_play] run function joan_system:ability_wo
execute as @a[tag=joan_fa,tag=joan_play] run function joan_system:ability_fa
execute as @a[tag=joan_na,tag=joan_play] run function joan_system:ability_na

## 試合タイマーカウントダウン(Score:joan_timer) ※2
scoreboard players remove @e[type=armor_stand,tag=joan_timer] joan_timer 1
scoreboard players remove @e[type=armor_stand,tag=joan_safe] joan_timer 1

scoreboard objectives setdisplay sidebar.team.red joan_view

## 死亡時の上位3位の順位の保存(Score:joan_ticket) ※3
execute as @a[tag=joan_play,scores={joan_live=3}] run scoreboard players set @s joan_ticket 1
execute as @a[tag=joan_play,scores={joan_live=2}] run scoreboard players set @s joan_ticket 2
execute as @a[tag=joan_play,scores={joan_live=1}] run scoreboard players set @s joan_ticket 3

## ゲーム終了条件が満たされたか ※4
execute as @a[scores={joan_live=..1},tag=joan_play] run function joan_system:reward
### 生き残りが１人以下になったら終了
execute as @e[type=armor_stand,tag=joan_timer,scores={joan_timer=0}] run function joan_system:reward
### 制限時間が来たら

team add Joan_Player

## 死亡したか ※5
execute as @a[scores={joan_death=1..},gamemode=!spectator] run gamemode spectator @s
execute as @a[scores={joan_death=1..},gamemode=!spectator] run effect clear @s

## 能力用アイテム削除 ※6
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:raw_copper",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:raw_iron",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold",Count:1b}}]
execute in minecraft:ja-world run kill @e[type=item,nbt={Item:{id:"minecraft:barrier",Count:1b}}]

## 途中退出のち参加したプレーヤーの強制退出 ※7
scoreboard players operation @a joan_Ctimer = @e[tag=joan_timer] joan_timer
execute as @a[tag=joan_play] run scoreboard players operation @s joan_Ctimer -= @s joan_Ptimer
execute as @a[scores={joan_Ctimer=..-2},tag=joan_play] run function joan_system:leave

## プレイヤーのスコアとゲームタイマーの同期 ※8
scoreboard players operation @a[tag=joan_play] joan_Ptimer = @e[tag=joan_timer] joan_timer

## タイマー用ボスバーの更新 ※9
bossbar set minecraft:joan_time players @a[tag=joan_play]
execute store result bossbar joan_time value run scoreboard players get @e[tag=joan_timer,limit=1] joan_timer

## 範囲収縮 ※10
execute in ja-world as @e[tag=joan_safe,scores={joan_timer=9600}] run function joan_system:contraction_1
execute in ja-world as @e[tag=joan_safe,scores={joan_timer=6000}] run function joan_system:contraction_2
execute in ja-world as @e[tag=joan_safe,scores={joan_timer=3000}] run function joan_system:contraction_3

## (※1) 新しくJobを追加した際は[#各ジョブ選択者がいるか]の下に追加する事

title @a[tag=joan_debug] actionbar {"text":"play"}