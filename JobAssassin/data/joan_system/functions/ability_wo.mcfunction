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
effect give @s[scores={joan_kill=1..}] speed 2 0 true
effect give @s[scores={joan_kill=2..}] jump_boost 2 0 true
effect give @s[scores={joan_kill=3..}] regeneration 2 0 true
effect give @s[scores={joan_kill=4..}] speed 2 1 true
effect give @s[scores={joan_kill=5..}] jump_boost 2 1 true