# 警告通知
## 範囲収縮開始
tellraw @a[tag=joan_play] {"text":"-=| \u7b2c\u4e8c\u7bc4\u56f2\u53ce\u7e2e \u958b\u59cb |=-","color":"light_purple"}
## 音声
playsound entity.ender_dragon.growl master @a[tag=joan_play] ~ ~ ~ 1 1 1

# 範囲収縮地点決定
## 中心地点の決定
execute in ja-world at @e[tag=joan_safe,limit=1] run spreadplayers ~ ~ 0 92.5 under 300 false @e[tag=joan_safe,limit=1]
execute in ja-world at @e[tag=joan_safe,limit=1] run tp @e[tag=joan_safe,limit=1] ~ 300 ~
execute in ja-world at @e[tag=joan_safe,limit=1] run worldborder center ~ ~

# 範囲収縮
worldborder set 240
execute in ja-world run worldborder set 96 25