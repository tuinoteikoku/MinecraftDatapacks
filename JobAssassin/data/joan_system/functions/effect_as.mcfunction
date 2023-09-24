## ノーマルアビリティ効果
effect give @s[scores={joan_normal=1}] jump_boost 5 5 true
effect give @s[scores={joan_normal=1}] speed 5 4 true

## アクティブアビリティ効果
effect give @s[scores={joan_active=1}] invisibility 10 1 true

## スぺシャルアビリティ効果
effect give @s[scores={joan_special=1}] strength 5 2 true
attribute @s[scores={joan_special=1}] minecraft:generic.max_health base set 26

## ノーマルエフェクト
execute at @s[scores={joan_normal=1}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_normal=1}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~

## アクティブエフェクト
execute at @s[scores={joan_active=1}] run particle minecraft:lava ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_active=1}] run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~

## スペシャルエフェクト
execute at @s[scores={joan_special=1}] run particle minecraft:end_rod ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_special=1}] run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~

## ノーマルアビリティエフェクト
scoreboard players add @s[scores={joan_normal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_normal=1}] joan_normal 0

## アクティブアビリティエフェクト
scoreboard players add @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0

## スぺシャルアビリティエフェクト
scoreboard players add @s[scores={joan_special=1}] joan_ab_s 3600
scoreboard players set @s[scores={joan_special=1}] joan_special 0