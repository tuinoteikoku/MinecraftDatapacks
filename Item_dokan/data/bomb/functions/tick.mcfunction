### 魔法陣でドッカンがテーマ
## ド派手に爆破しよう！

### どっかんNo.1
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{No:1}}}] as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{No:1}}}] at @s run function bomb:no1/main

#scoreboard players reset @a[scores={bomb.carrot=1..}] bomb.carrot

execute as @a if score @s bomb.carrot matches 1.. run scoreboard players add @s bomb.carrot 1
execute as @a if score @s bomb.carrot matches 100.. run function bomb:no1/ctreset

execute as @e[type=armor_stand,tag=bomb_no1] at @s run function bomb:no1/mahouzin

execute as @e[type=armor_stand,tag=bomb_no1_reticle] at @s run function bomb:no1/reticle
