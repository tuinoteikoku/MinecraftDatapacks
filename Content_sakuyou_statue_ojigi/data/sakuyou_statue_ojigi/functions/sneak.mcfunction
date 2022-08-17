###滑稽なおじぎを見よう
execute if data storage statue_ojigi:option {actionbar:true} as @s unless score @s statue_ojigi.day = #statue_ojigi.day statue_ojigi.day run title @s actionbar [{"text":"銅像にお辞儀してみよう","color":"gold"}]

##スニーク10tick & 視点が下がっているならば お辞儀加算
execute as @s[x_rotation=65..90] if score @s statue_ojigi.Sneak_t matches 10.. run function sakuyou_statue_ojigi:ojigi_progress

##お辞儀5越えならば近くにいるだけでお辞儀加算(残心的なアレ？)。その際は瞑想っぽい効果発動
execute if score @s statue_ojigi.Sneak_C matches 5 run tellraw @s [{"text":"銅像にお辞儀してみた...","color":"yellow"}]
execute if score @s statue_ojigi.Sneak_C matches 5.. run function sakuyou_statue_ojigi:ojigi_after_wait

##お辞儀55越えで本日貰っていなければ、お恵み授からず
execute if score @s statue_ojigi.Sneak_C matches 55 if score @s statue_ojigi.day = #statue_ojigi.day statue_ojigi.day run function sakuyou_statue_ojigi:ojigi_failure

##お辞儀55越えで本日貰っていなければ、お恵み授かり
execute if score @s statue_ojigi.Sneak_C matches 55 unless score @s statue_ojigi.day = #statue_ojigi.day statue_ojigi.day run function sakuyou_statue_ojigi:ojigi_success

##お辞儀55越えならば、お恵みゲット
execute if score @s statue_ojigi.Sneak_C matches 55 run scoreboard players set @s statue_ojigi.Sneak_C 0
