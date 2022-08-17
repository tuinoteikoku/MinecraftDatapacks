### 魔法陣でドッカンがテーマ
## ド派手に爆破しよう！

### 照準
execute at @s anchored eyes run summon armor_stand ^ ^ ^1 {Tags:["bomb_no1_reticle"],Invisible:1,Marker:1}
execute as @e[type=armor_stand,tag=bomb_no1_reticle] at @s run tp @s ^ ^ ^ facing entity @p eyes
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.3
particle enchant ^ ^1 ^ 1 1 1 1 30