## ノーマルアビリティ条件
execute as @a[tag=joan_na,scores={joan_ab_n=1}] run function joan_system:effect_na

## アクティブアビリティ条件
execute as @a[tag=joan_na,scores={joan_ab_a=1}] run function joan_system:effect_na

## スぺシャルアビリティ条件
execute as @a[tag=joan_na,scores={joan_ab_s=1}] run function joan_system:effect_na

## ノーマルアビリティCt
scoreboard players remove @s joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s joan_special 1

## パッシブアビリティ
effect give @s resistance 3 1 true