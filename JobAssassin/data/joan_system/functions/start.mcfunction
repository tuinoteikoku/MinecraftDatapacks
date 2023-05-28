## 参加プレイヤーにTag付け(joan_play) ※1
tag @a[tag=joan_select] add joan_play

## ジョブ未選択Tag削除(Tag:joan_select) ※2
tag @a[tag=joan_select] remove joan_select

##ジョブ選択Tag削除(Tag:joan_select) ※3
tag @e[type=armor_stand,tag=joan_select,tag=joan_timer] remove joan_select

## 試合タイマーセット(Score:joan_timer) ※4
scoreboard players set @e[type=armor_stand,tag=joan_timer] joan_timer 70000

## 参加プレイヤーTP(Tag:joan_play) ※5
execute in ja-world unless entity @a[x=-200,dx=400,y=-50,dy=250,z=-200,dz=400] run spreadplayers 0.5 0.5 30 180 false @a[tag=joan_play]

## 開始演出(Tag:joan_play) ※6
title @a[tag=joan_play] title ["",{"text":"\u22d9 \u30b2\u30fc\u30e0\u30b9\u30bf\u30fc\u30c8!! ","bold":true,"italic":true,"color":"dark_red"},{"text":"\u22d8","color":"dark_red"}]

## アイテム配布 ※7
item replace entity @a[tag=joan_fa,tag=joan_play] armor.feet with minecraft:chainmail_boots
item replace entity @a[tag=joan_as,tag=joan_play] hotbar.0 with minecraft:iron_sword
item replace entity @a[tag=joan_na,tag=joan_play] hotbar.0 with minecraft:stone_sword
item replace entity @a[tag=joan_na,tag=joan_play] weapon.offhand with minecraft:shield
item replace entity @a[tag=joan_wo,tag=joan_play] hotbar.0 with minecraft:stone_axe
give @a[tag=joan_play] minecraft:beetroot{display:{Name:'{"text":"兵糧丸","color":"dark_purple","bold":true}',Lore:['{"text":"これは我々に力を与えてくれるだろう…","italic":true}']}} 64

## 試合タイマー開始キー(Tag:joan_playing) ※8
tag @e[type=armor_stand,tag=joan_timer] add joan_playing