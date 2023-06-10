## 毎tick1ずつへらす
scoreboard players remove @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1..}] joan_timer 1

## 職業選択に移動
execute in minecraft:ja-world as @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1}] run tp @a[tag=joan_join] 0.5 -8 0.5

## tp後にtag付け&消し
tag @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1}] add joan_select
tag @e[type=minecraft:armor_stand,tag=joan_timer,scores={joan_timer=1}] remove joan_wait
execute in minecraft:ja-world run tag @a[x=2,dx=-4,y=-8,dy=2,z=2,dz=-4,tag=joan_join] add joan_select
tag @a[tag=joan_select] remove joan_join