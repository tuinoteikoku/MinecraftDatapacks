## ノーマルアビリティ効果
give @s[scores={joan_normal=1,joan_sneakA=..600}] minecraft:potion{display:{Name:'"弱い治療薬"'},CustomPotionEffects:[{Id:6,Amplifier:1,Duration:200,ShowParticles:false}],CustomModelData:50709} 1
give @s[scores={joan_normal=1,joan_sneakA=601..1200}] minecraft:potion{display:{Name:'"抗生物質"'},CustomPotionEffects:[{Id:5,Amplifier:0,Duration:200,ShowParticles:false},{Id:11,Amplifier:0,Duration:200,ShowParticles:false}],CustomModelData:50710} 1
give @s[scores={joan_normal=1,joan_sneakA=1200..1800}] minecraft:potion{display:{Name:'"魔剤"'},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:200,ShowParticles:false},{Id:8,Amplifier:1,Duration:200,ShowParticles:false},{Id:16,Amplifier:0,Duration:200,ShowParticles:false}],CustomModelData:50711} 1
give @s[scores={joan_normal=1,joan_sneakA=1800..2400}] minecraft:potion{display:{Name:'"ドーピング剤"'},CustomPotionEffects:[{Id:1,Amplifier:0,Duration:200,ShowParticles:false},{Id:5,Amplifier:1,Duration:200,ShowParticles:false},{Id:8,Amplifier:0,Duration:200,ShowParticles:false}],CustomModelData:50712} 1
give @s[scores={joan_normal=1,joan_sneakA=2401..}] minecraft:potion{display:{Name:'"強い治療薬"'},CustomPotionEffects:[{Id:6,Amplifier:2,Duration:200,ShowParticles:false},{Id:21,Amplifier:1,Duration:200,ShowParticles:false},{Id:22,Amplifier:1,Duration:200,ShowParticles:false},{Id:23,Amplifier:0,Duration:200,ShowParticles:false}],CustomModelData:50713} 1


## アクティブアビリティ効果
effect give @s[scores={joan_active=1}] speed 20 2 true
effect give @s[scores={joan_active=1}] jump_boost 20 2 true
effect give @s[scores={joan_active=1}] strength 20 2 true

## スぺシャルアビリティ効果
attribute @s[scores={joan_special=1}] minecraft:generic.max_health base set 10

## ノーマルエフェクト
execute at @s[scores={joan_normal=1}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_normal=1}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~

## アクティブエフェクト
execute at @s[scores={joan_active=1}] run particle minecraft:lava ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_active=1}] run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~

## スペシャルエフェクト
execute at @s[scores={joan_special=1}] run particle minecraft:end_rod ~ ~ ~ 1 1 1 0 20 force @s
execute at @s[scores={joan_special=1}] run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~

## ノーマルアビリティCt
scoreboard players set @s[scores={joan_normal=1}] joan_ab_n 800
scoreboard players set @s[scores={joan_normal=1}] joan_sneakA 0
scoreboard players set @s[scores={joan_normal=1}] joan_normal 0

## アクティブアビリティCt
scoreboard players set @s[scores={joan_active=1}] joan_ab_a 1000
scoreboard players set @s[scores={joan_active=1}] joan_active 0

## スぺシャルアビリティCt
scoreboard players set @s[scores={joan_special=1}] joan_ab_s 3600
scoreboard players set @s[scores={joan_special=1}] joan_special 0