## ノーマルアビリティ条件
execute as @a[tag=joan_wo,scores={joan_ab_n=1}] run function joan_system:effect_wo

## アクティブアビリティ条件
execute as @a[tag=joan_wo,scores={joan_ab_a=1}] run function joan_system:effect_wo

## スぺシャルアビリティ条件
execute as @a[tag=joan_wo,scores={joan_ab_s=1}] run function joan_system:effect_wo

## ノーマルアビリティCt
scoreboard players remove @s joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s joan_special 1

## パッシブアビリティ
