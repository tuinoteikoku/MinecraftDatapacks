### 初期化するよ。

#時刻制御スコア numを0に、dayを1に（設定時から24時間後にdayが加算されます = reset実行時刻が更新時刻になる）
scoreboard players set #statue_ojigi.day statue_ojigi.num 0
scoreboard players set #statue_ojigi.day statue_ojigi.day 1

#お辞儀の際の報酬金額設定
scoreboard players set #statue_ojigi.megumi statue_ojigi.num 10

#プレイヤーの各スコアを0に
scoreboard players set @a statue_ojigi.Sneak_C 0
scoreboard players set @a statue_ojigi.Sneak_t 0
scoreboard players set @a statue_ojigi.day 0

#アクションバー表示の設定
data merge storage statue_ojigi:option {actionbar:true}