#tpam_e_2の半径18ブロック以内のランダムなプレイヤー１人を座標0 0 0にtpさせる。
##0 0 0の部分は脱出後の場所に設定するように

execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_2] run tp @a[distance=..18,sort=random,limit=1] 0 0 0