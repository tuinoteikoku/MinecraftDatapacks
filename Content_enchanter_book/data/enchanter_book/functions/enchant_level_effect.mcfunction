### Copyright © 2022 よしたこ
### エンチャント実行時のエフェクトと効果音を発生させるよ

execute at @s run particle minecraft:enchant ~ ~2 ~ 0.1 0.1 0.1 10 500
execute at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100
tellraw @s [{"text":"[システム]エンチャントに成功した！"}]