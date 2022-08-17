#
#  粛清ノートtick functions
#  tick.jsonに登録して常時実行されることを想定
#

#right_clickが1以上かつ指定アイテムを持っていた場合に粛清ノートを発動させる
execute as @a if predicate deathnote:is_used_deathnote run function deathnote:logic_death_note
execute as @a run scoreboard players reset @s RightClick_carrot_on_a_stick