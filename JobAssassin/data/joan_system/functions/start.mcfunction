## 参加プレイヤーにTag付け(joan_play) ※1
tag @a[tag=joan_select] add joan_play

## ジョブ未選択Tag削除(Tag:joan_select) ※2
tag @a[tag=joan_select] remove joan_select

##ジョブ選択Tag削除(Tag:joan_select) ※3
tag @e[type=armor_stand,tag=joan_select,tag=joan_timer] remove joan_select
tag @e[type=armor_stand,tag=joan_join,tag=joan_timer] remove joan_join

##参加プレイヤーのチーム設定
team join Joan_Player @a[tag=joan_play]

##スニークスコアボードのリセット
scoreboard players reset @a[tag=joan_play] joan_sneakA
scoreboard players reset @a[tag=joan_play] joan_sneakB

## 試合タイマーセット(Score:joan_timer) ※4
scoreboard players set @e[type=armor_stand,tag=joan_timer] joan_timer 12000
scoreboard players set @e[type=armor_stand,tag=joan_safe] joan_timer 12000

## 参加プレイヤーTP(Tag:joan_play) ※5
execute in ja-world unless entity @a[x=-200,dx=400,y=-50,dy=250,z=-200,dz=400] run spreadplayers 0.5 0.5 30 180 false @a[tag=joan_play]

## 観戦プレイヤーtp ※5.5
execute in ja-world if entity @a[x=12,y=-63,z=12,dx=24,dy=9,dz=24] run gamemode spectator @a[tag=!joan_play]
execute in ja-world if entity @a[x=12,y=-63,z=12,dx=24,dy=9,dz=24] run tp @a[tag=!joan_play] 0 150 0

## 開始演出(Tag:joan_play) ※6
title @a[tag=joan_play] title ["",{"text":"\u22d9 \u30b2\u30fc\u30e0\u30b9\u30bf\u30fc\u30c8!! ","bold":true,"italic":true,"color":"dark_red"},{"text":"\u22d8","color":"dark_red"}]
playsound minecraft:entity.ender_dragon.growl master @a[tag=joan_play] ~ ~ ~

## アイテム配布 ※7
item replace entity @a[tag=joan_fa,tag=joan_play] armor.feet with minecraft:chainmail_boots{CustomModelData:50702}
item replace entity @a[tag=joan_as,tag=joan_play] hotbar.0 with minecraft:iron_sword{CustomModelData:50703}
item replace entity @a[tag=joan_na,tag=joan_play] hotbar.0 with minecraft:stone_sword{CustomModelData:50704}
item replace entity @a[tag=joan_na,tag=joan_play] weapon.offhand with minecraft:shield{CustomModelData:50705}
item replace entity @a[tag=joan_wo,tag=joan_play] hotbar.0 with minecraft:stone_axe{CustomModelData:50706}
item replace entity @a[tag=joan_er,tag=joan_play] hotbar.0 with minecraft:stone_sword{CustomModelData:50707}
give @a[tag=joan_play] minecraft:beetroot{display:{Name:'{"text":"兵糧丸","color":"dark_purple","bold":true}',Lore:['{"text":"これは我々に力を与えてくれるだろう…","italic":true}']}} 64

## ゲームモード変更 ※8
gamemode adventure @a[tag=joan_play]

## 死亡回数リセット ※9
scoreboard players set @a joan_death 0

## kill数リセット
scoreboard players set @a joan_killed 0

## bossbarの表示
bossbar set minecraft:joan_time visible true

## スキル用スコア設定
scoreboard players set @a[tag=joan_play] joan_ab_a 0
scoreboard players set @a[tag=joan_play] joan_ab_n 0
scoreboard players set @a[tag=joan_play] joan_ab_s 0
scoreboard players set @a[tag=joan_play] joan_live 0

## 試合タイマー開始キー(Tag:joan_playing) ※11
tag @e[type=armor_stand,tag=joan_timer] add joan_playing

tellraw @a[tag=joan_debug] {"text": "start"}