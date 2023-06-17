## 猶予タイマー開始キー(Tag:joan_wait)
tag @e[type=armor_stand,tag=joan_join] add joan_wait

## 猶予タイマーセット(22秒)
scoreboard players set @e[type=minecraft:armor_stand,tag=joan_wait] joan_timer 441

tellraw @a[tag=joan_debug] {"text":"waiting"}