### 滑稽なおじぎを見よう
## シフト検知 (@eの範囲をdistanceに留めるように変更。プレイヤー主体のコマンドに)
execute as @a[scores={statue_ojigi.Sneak_t=1..}] at @s if entity @e[distance=..10,tag=douzou] run function sakuyou_statue_ojigi:sneak

## 時間検知 (1日カウント)
# daytimeが23999ならばnumを1にする ( 23999:マイクラ時間の最終時刻 1サイクル20分 で num1)
execute if score #statue_ojigi.daytime statue_ojigi.day matches 23999 run scoreboard players add #statue_ojigi.day statue_ojigi.num 1
# daytimeを取得
execute store result score #statue_ojigi.daytime statue_ojigi.day run time query daytime
# numが72ならdayを1加算する (num72*20分=1日)
execute if score #statue_ojigi.day statue_ojigi.num matches 72 run scoreboard players add #statue_ojigi.day statue_ojigi.day 1
# dayが100ならdayを1に戻す
execute if score #statue_ojigi.day statue_ojigi.day matches 100 run scoreboard players set #statue_ojigi.day statue_ojigi.day 1
# numが72ならnumを0に戻す
execute if score #statue_ojigi.day statue_ojigi.num matches 72 run scoreboard players set #statue_ojigi.day statue_ojigi.num 0
