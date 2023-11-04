# 範囲収縮地点決定
execute in ja-world at @e[tag=joan_safe,limit=1] run spreadplayers ~ ~ 0 191.5 under 300 false @e[tag=joan_safe,limit=1]
execute in ja-world at @e[tag=joan_safe,limit=1] run tp @e[tag=joan_safe,limit=1] ~ 300 ~

# 範囲収縮中心座標取得
execute store result storage minecraft:area_pos PosX int 100 run data get entity @e[tag=joan_safe,limit=1] Pos[0]
execute store result storage minecraft:area_pos PosZ int 100 run data get entity @e[tag=joan_safe,limit=1] Pos[2]

# 範囲収縮中心予告
tellraw @a [{"text":"第一範囲収縮の中心は X:"},{"nbt":"PosX","storage":"area_pos"},{"text":" , Z:"},{"nbt":"PosZ","storage":"area_pos"},{"text":"です。"}]
playsound entity.player.levelup master @a[tag=joan_play] ~ ~ ~