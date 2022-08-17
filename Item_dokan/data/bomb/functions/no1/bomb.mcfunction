execute at @e[tag=bomb_no1] run summon tnt ~ ~1 ~ {Tags:["bomb","bomb_tnt"],Fuse:9999}
execute as @e[type=tnt,tag=bomb] at @s run spreadplayers ~ ~ 2 8 false @s
#execute as @e[type=tnt,tag=bomb] run data merge entity @s {Motion:[0.0,0.6,0.0]}
tag @e[tag=bomb] remove bomb
schedule function bomb:no1/bomb 5t append
