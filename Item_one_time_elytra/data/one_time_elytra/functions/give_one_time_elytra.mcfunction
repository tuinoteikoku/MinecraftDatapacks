### Copyright © 2022 よしたこ
### 使い捨て落下傘を取り出すか判定する際のファンクション

#胴に装備がある場合、装着できない
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] run tellraw @s [{"text":"既に胴に装備があるため、落下傘を装着できません。"}]

#胴に装備が無い場合、装着します
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] as @s run function one_time_elytra:inst_one_time_elytra