## ノーマルアビリティ効果
effect give @s[scores={joan_normal=1,joan_killed=0..1}] regeneration 4 1 true
effect give @s[scores={joan_normal=1,joan_killed=2..3}] regeneration 4 2 true
effect give @s[scores={joan_normal=1,joan_killed=4..5}] regeneration 4 3 true
effect give @s[scores={joan_normal=1,joan_killed=6..}] regeneration 4 4 true

## アクティブアビリティ効果
execute at @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] as @a[tag=joan_play,distance=1..30,gamemode=adventure] run effect give @s minecraft:glowing 10 1 true
execute at @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] as @a[tag=joan_play,distance=1..30,gamemode=adventure] run effect give @s minecraft:slowness 10 1 true
execute at @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] as @a[tag=joan_play,distance=1..30,gamemode=adventure] run effect give @s minecraft:blindness 10 1 true

## ノーマルエフェクト
execute at @s[scores={joan_normal=1}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_normal=1}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~

## アクティブエフェクト
execute at @s[scores={joan_active=1}] run particle minecraft:lava ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_active=1}] run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~

## ノーマルアビリティエフェクト
scoreboard players set @s[scores={joan_normal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_normal=1}] joan_normal 0

## アクティブアビリティエフェクト
scoreboard players set @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0