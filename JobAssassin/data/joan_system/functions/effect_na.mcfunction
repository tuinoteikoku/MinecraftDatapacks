## ノーマルアビリティ効果
effect give @s[scores={joan_normal=1}] saturation 5 2 true

## アクティブアビリティ効果
effect give @s[scores={joan_active=1}] strength 5 2 true
effect give @s[scores={joan_active=1}] saturation 5 1 true

## スぺシャルアビリティ効果
effect give @s[scores={joan_special=1}] regeneration 5 2 true
effect give @s[scores={joan_special=1}] strength 15 2 true
effect give @s[scores={joan_special=1}] resistance 15 3 true
effect give @s[scores={joan_special=1}] saturation 15 3 true

## ノーマルエフェクト

## アクティブエフェクト

## スペシャルエフェクト

## ノーマルアビリティエフェクト
scoreboard players add @s[scores={joan_normal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_normal=1}] joan_nomal 0

## アクティブアビリティエフェクト
scoreboard players add @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0

## スぺシャルアビリティエフェクト
scoreboard players add @s[scores={joan_special=1}] joan_ab_s 3600
scoreboard players set @s[scores={joan_special=1}] joan_special 0