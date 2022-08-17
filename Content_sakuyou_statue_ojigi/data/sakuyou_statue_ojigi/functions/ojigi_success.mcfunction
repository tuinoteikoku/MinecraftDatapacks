##お辞儀55越え(お恵み授かり)
tellraw @s [{"text":"銅像から恵みを受けた。","color":"yellow"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.6
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.02 10 normal @s
scoreboard players operation @s casino += #statue_ojigi.megumi statue_ojigi.num
scoreboard players operation @s statue_ojigi.day = #statue_ojigi.day statue_ojigi.day
