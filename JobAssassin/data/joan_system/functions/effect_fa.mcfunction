## ノーマルアビリティ効果
effect give @s[scores={joan_nomal=1}] invisibility 3 1 true
effect give @s[scores={joan_nomal=1}] strength 3 1 true
effect give @s[scores={joan_nomal=1}] speed 20 2 true

## アクティブアビリティ効果
effect give @s[scores={joan_active=1}] strength 15 1 true
effect give @s[scores={joan_active=1}] resistance 15 1 true
effect give @s[scores={joan_active=1}] regeneration 3 1 true
effect give @s[scores={joan_active=1}] speed 3 2 true

## スぺシャルアビリティ効果
effect give @s[scores={joan_special=1}] speed 15 3 true
effect give @s[scores={joan_special=1}] strength 15 3 true

## ノーマルエフェクト

## アクティブエフェクト

## スペシャルエフェクト

## ノーマルアビリティCt
scoreboard players add @s[scores={joan_nomal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_nomal=1}] joan_nomal 0

## アクティブアビリティCt
scoreboard players add @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0

## スぺシャルアビリティCt
scoreboard players add @s[scores={joan_special=1}] joan_ab_s 3600
scoreboard players set @s[scores={joan_special=1}] joan_special 0