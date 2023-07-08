## アイテム削除
clear @s

## スコアボードリセット
scoreboard players reset @s joan_timer
scoreboard players reset @s joan_normal
scoreboard players reset @s joan_active
scoreboard players reset @s joan_special
scoreboard players reset @s joan_ab_n
scoreboard players reset @s joan_ab_a
scoreboard players reset @s joan_ab_s
scoreboard players reset @s joan_ticket
scoreboard players reset @s joan_death
scoreboard players reset @s joan_Ptimer
scoreboard players reset @s joan_Ctimer

## Tag削除
tag @s[tag=joan_as] remove joan_as
tag @s[tag=joan_wo] remove joan_wo
tag @s[tag=joan_fa] remove joan_fa
tag @s[tag=joan_na] remove joan_na
tag @s remove joan_play

## TP
tp @s 0.5 -63.0 10.0