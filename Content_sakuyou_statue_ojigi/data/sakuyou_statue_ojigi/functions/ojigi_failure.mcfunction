##お辞儀55越え(お恵み授かり済み)
tellraw @s [{"text":"しかし何も起こらなかった。","color":"gray"}]
execute at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1
execute at @s run particle smoke ~ ~ ~ 0.4 0.4 0.4 0 10 normal @s
scoreboard players operation @s casino += #statue_ojigi.megumi statue_ojigi.num
