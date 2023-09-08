# 警告通知
## 範囲収縮開始
tellraw @a[tag=joan_play] "<JobAssassinSystem> 第一範囲収縮、開始"
## 音声
playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# 範囲収縮地点決定
## 中心地点の決定
spreadplayers ~ ~ 0 192.5 under 300 false @s
worldborder center ~ ~

# 範囲収縮
worldborder set 192 30