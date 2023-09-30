# 警告通知
## 範囲収縮開始
tellraw @a[tag=joan_play] {"text":"-=| \u7b2c\u4e8c\u7bc4\u56f2\u53ce\u7e2e \u958b\u59cb |=-","color":"light_purple"}
## 音声
playsound entity.ender_dragon.growl master @a[tag=joan_play] ~ ~ ~ 1 1 1

# 範囲収縮地点決定
function joan_area:area_sort2