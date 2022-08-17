kill @e[tag=bomb_no1]
schedule clear bomb:no1/bomb

execute as @e[type=tnt,tag=bomb_tnt] run data merge entity @s {Fuse:1}
execute at @e[type=tnt,tag=bomb_tnt] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 1 5