### Copyright © 2022 よしたこ
### 発煙筒使用地点への防具建て設置と設定

#防具建て設置と設定
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["return_firework"],Marker:true}
execute as @e[distance=..10,type=armor_stand,tag=return_firework] run scoreboard players set @s return_firework.count 60
scoreboard players add #return_firework return_firework.firework_num 1

#使用告知
tellraw @s [{"text":"発煙筒を使用しました!1分後に脱出します!"}]
tellraw @s [{"text":"発煙筒の半径4m以内に待機してください"}]

#煙発生
particle minecraft:campfire_signal_smoke ~ ~ ~ 0 3 0 0.01 50

#強制読み込みチャンクにする(死んで読み込み外になった時に@eで取得する防具建ての数が合わなくなる問題を防ぐため)
execute at @s run forceload add ~-2 ~-2 ~2 ~2
