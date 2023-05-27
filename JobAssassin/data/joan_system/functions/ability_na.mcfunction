## ノーマルアビリティ条件
execute as @a[tag=joan_na,scores={joan_nomal=1,joan_ab_n=0}] run function joan_system:effect_na

## アクティブアビリティ条件
execute as @a[tag=joan_na,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_na

## スぺシャルアビリティ条件
execute as @a[tag=joan_na,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_na

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_special 1

## パッシブアビリティ
effect give @s resistance 2 1 true