## 生存人数に対応した報酬配布 ※1
give @a[tag=play,scores={joan_live=1}] paper{display:{Name:'{"text":"エメラルドチケット","color":"green","bold":true,"italic":true}'},HideFlags:1,CustomModelData:50701,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 3
give @a[tag=play,scores={joan_live=2}] paper{display:{Name:'{"text":"エメラルドチケット","color":"green","bold":true,"italic":true}'},HideFlags:1,CustomModelData:50701,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 2
give @a[tag=play,scores={joan_live=3}] paper{display:{Name:'{"text":"エメラルドチケット","color":"green","bold":true,"italic":true}'},HideFlags:1,CustomModelData:50701,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1

## アイテム削除 ※2
clear @a[tag=joan_play]

## 参加プレイヤー返送 ※3
tp @a[tag=joan_play] 0.5 -63.0 10.0

## 使用スコアボードのリセット ※4
scoreboard players reset @a[tag=joan_play] joan_normal
scoreboard players reset @a[tag=joan_play] joan_active
scoreboard players reset @a[tag=joan_play] joan_special
scoreboard players reset @a[tag=joan_play] joan_ab_n
scoreboard players reset @a[tag=joan_play] joan_ab_a
scoreboard players reset @a[tag=joan_play] joan_ab_s
scoreboard players reset @a[tag=joan_play] joan_ticket

## 参加プレイヤーTag削除(Tag:joan_play) ※5
tag @a[tag=joan_play] remove joan_play

## 選択ジョブTag削除(Tag:joan_as,wa,fa,na) ※6
tag @a[tag=joan_as] remove joan_as
tag @a[tag=joan_wo] remove joan_wo
tag @a[tag=joan_fa] remove joan_fa
tag @a[tag=joan_na] remove joan_na

## 試合カウントリセット(Score:joan_timer) ※7
scoreboard players set @e[type=armor_stand,tag=joan_timer] joan_timer -1