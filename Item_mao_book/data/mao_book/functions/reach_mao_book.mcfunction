### Copyright © 2022 よしたこ
### 毛沢東語録が敵に当たっているか、その敵が毛沢東語録を所有していないか確認するファンクション

#現在地から-0.125~0.875(dx=0は1ブロック)に当たり判定が存在するエンティティが
#現在地から-0.75~0.25にも当たり判定が存在する(眼前の0.25~-0.125ブロックにエンティティが存在する)場合、hitタグを付与する。
execute as @e[dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[dx=0] run tag @s add mao_book_hit
#現在地を進めて再起する（リーチの位置まで繰り返す）
execute positioned ^ ^ ^0.25 if entity @s[distance=..5] run function mao_book:reach_mao_book