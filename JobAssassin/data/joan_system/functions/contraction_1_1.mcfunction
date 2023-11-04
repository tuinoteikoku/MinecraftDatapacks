# 範囲収縮地点決定
execute in ja-world at @e[tag=joan_safe,limit=1] run spreadplayers ~ ~ 0 96.25 under 300 false @e[tag=joan_safe,limit=1]
execute in ja-world at @e[tag=joan_safe,limit=1] run tp @e[tag=joan_safe,limit=1] ~ 300 ~

# 範囲収縮中心座標取得
execute store result storage minecraft:area_pos PosX float 0.01 run data get entity @e[tag=joan_safe,limit=1] Pos[0] 100
execute store result storage minecraft:area_pos PosZ float 0.01 run data get entity @e[tag=joan_safe,limit=1] Pos[2] 100

# 範囲収縮中心予告
tellraw @a [{"text":"第一範囲収縮の中心は X:"},{"nbt":"PosX","storage":"area_pos"},{"text":" , Z:"},{"nbt":"PosZ","storage":"area_pos"},{"text":"です。"}]
playsound entity.player.levelup master @a[tag=joan_play] ~ ~ ~