# 警告通知
## 範囲収縮開始
tellraw @a[tag=joan_play] {"text":"-=| \u7b2c\u4e8c\u7bc4\u56f2\u53ce\u7e2e \u958b\u59cb |=-","color":"light_purple"}
## 音声
playsound entity.ender_dragon.growl master @a[tag=joan_timer] ~ ~ ~ 1 1 1

# 範囲収縮地点決定
## 中心地点の決定
spreadplayers ~ ~ 0 95.5 under 300 false @s
tp @s ~ ~300 ~
worldborder center ~ ~

# 範囲収縮
worldborder set 48 25