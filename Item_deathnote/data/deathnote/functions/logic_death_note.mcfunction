#
#  粛清ノートfunctions
#  
#

#自身を抽選から外す用に、Using_DeathNoteタグをつける
#note:マルチで行う都合上、複数人が同時に粛清ノートを用いた場合、
#     その複数人が抽選から外れることになる恐れあり。
say 制裁ッ…！
execute as @s run tag @s add Using_DeathNote

#Using_DeathNote以外の半径20ブロック以内のプレイヤーを一人SATSUGAIする
execute at @s run kill @r[distance=..20,tag=!Using_DeathNote]

#killではなくダメージを与えたい場合は以下のものを利用する
#execute at @s run effect give @r[distance=..20,tag=!Using_DeathNote] instant_damage 1 1 true

#使用終了ということでタグを外す
execute as @s run tag @s remove Using_DeathNote
