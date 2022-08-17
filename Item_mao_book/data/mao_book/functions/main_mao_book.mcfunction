### Copyright © 2022 よしたこ
### 毛沢東語録でプレイヤーを攻撃した際に呼び出されるファンクション
#自分の視点を起点に、少しだけ左下を現在地として、リーチ用処理を呼び出す。
#dx=0を２つ重ねて1ブロックより小さい当たり判定を作るため。こちらは右上ブロック用。
execute anchored eyes positioned ^ ^ ^ positioned ~-0.125 ~-0.125 ~-0.125 run function mao_book:reach_mao_book
#毛沢東語録による攻撃を受け、自分ではないエンティティに効果を与える
tag @s add mao_book_me
execute as @e[tag=mao_book_hit,tag=!mao_book_me] at @s run function mao_book:effect_mao_book
tag @s remove mao_book_me
#毛沢東語録で攻撃した実績を消す
advancement revoke @s only mao_book:mao_book_atk
#自分のみセリフを表示
tellraw @s [{"text":"\"Proletarier aller L\u00e4nder vereinigt Euch!\" \u4e07\u56fd\u306e\u30d7\u30ed\u30ec\u30bf\u30ea\u30a2\u3088\u3001\u56e3\u7d50\u305b\u3088\uff01","bold":true,"italic":true,"underlined":true,"color":"red"}]
