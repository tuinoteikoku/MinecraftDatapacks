## ノーマルアビリティ条件
execute as @a[tag=joan_fa,scores={joan_nomal=1,joan_ab_n=0}] run function joan_system:effect_fa

## アクティブアビリティ条件
execute as @a[tag=joan_fa,scores={joan_acive=1,joan_ab_a=0}] run function joan_system:effect_fa

## スぺシャルアビリティ条件
execute as @a[tag=joan_fa,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_fa

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_special 1

## パッシブアビリティ
effect give @s speed 3 2 true