## ノーマルアビリティ効果
execute at @a[tag=joan_er,scores={joan_normal=0,joan_ab_n=600..800}] as @a[tag=joan_play,distance=1..20] run effect give @s minecraft:weakness 5 2 true
execute at @a[tag=joan_er,scores={joan_normal=0,joan_ab_n=600..800}] as @a[tag=joan_play,distance=1..20] run effect give @s minecraft:nausea 5 1 true
execute at @a[tag=joan_er,scores={joan_normal=0,joan_ab_n=600..800}] as @a[tag=joan_play,distance=1..20] run effect give @s minecraft:blindness 5 1 true

## アクティブアビリティ効果
effect give @s[scores={joan_active=1}] saturation 10 2 true
effect give @s[scores={joan_active=1}] regeneration 10 2 true
execute at @a[tag=joan_er,scores={joan_active=0,joan_ab_a=800..1000}] as @a[tag=joan_play,distance=1..25] run effect give @s minecraft:slowness 5 3 true
execute at @a[tag=joan_er,scores={joan_active=0,joan_ab_a=800..1000}] as @a[tag=joan_play,distance=1..25] run effect give @s minecraft:blindness 5 1 true

## スぺシャルアビリティ効果
execute at @a[tag=joan_er,scores={joan_special=0,joan_ab_s=3460..3600}] as @a[tag=joan_play,distance=1..8] run effect give @s minecraft:wither 3 1 true
execute at @s[tag=joan_er,scores={joan_special=0,joan_ab_s=3000..3600}] run effect clear @s minecraft:wither

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
scoreboard players set @s[scores={joan_normal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_normal=1}] joan_normal 0

## アクティブアビリティエフェクト
scoreboard players set @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0

## スぺシャルアビリティエフェクト
scoreboard players set @s[scores={joan_special=1}] joan_ab_s 3600
scoreboard players set @s[scores={joan_special=1}] joan_special 0