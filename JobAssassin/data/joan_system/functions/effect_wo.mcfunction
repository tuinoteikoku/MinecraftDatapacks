## ノーマルアビリティ効果
effect give @s[scores={joan_nomal=1}] strength 3 1 true
effect give @s[scores={joan_nomal=1}] regeneration 3 3 true

## アクティブアビリティ効果
execute at @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] as @a[tag=play,distance=1..25] run effect give @s minecraft:glowing 10 1 true

## ノーマルエフェクト

## アクティブエフェクト

## ノーマルアビリティエフェクト
scoreboard players add @s[scores={joan_nomal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_nomal=1}] joan_nomal 0

## アクティブアビリティエフェクト
scoreboard players add @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0