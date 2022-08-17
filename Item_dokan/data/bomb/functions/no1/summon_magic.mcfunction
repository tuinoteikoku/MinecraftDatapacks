### 魔法陣でドッカンがテーマ
## ド派手に爆破しよう！
execute at @e[tag=bomb_no1_reticle] run summon armor_stand ~ ~ ~ {Tags:["bomb_no1"],Invisible:1,Marker:1,NoGravity:1}
execute as @e[type=armor_stand,tag=bomb_no1,limit=1,sort=nearest] run function bomb:no1/bomb_schedule
kill @s
