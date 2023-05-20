## 毎tick1ずつへらす
scoreboard players remove @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1..}] joan_timer 1

## 職業選択に移動
execute as @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1}] run tp @a[tag=joan_wait] 0.5 -8 0.5

##
