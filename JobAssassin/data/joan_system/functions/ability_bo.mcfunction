## ノーマルアビリティ条件
execute as @a[tag=joan_bo,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_bo

## アクティブアビリティ条件
execute as @a[tag=joan_bo,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_bo

## スぺシャルアビリティ条件
execute as @a[tag=joan_bo,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_bo