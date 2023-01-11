#脱出拠点設置時にドロップするアイテムの消去(種、花)
#使用したアマスタを消去

execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_1] run kill @e[type=item,distance=..15]
kill @e[type=minecraft:armor_stand,tag=tpam_e_1]
kill @e[type=minecraft:armor_stand,tag=tpam_e_2]