#アマスタの位置に座標のヘリをクローンする
#使用したアマスタの上空1000ブロックに爆破用のアマスタを設置
##１つ目の衛星の名を「エインヘリアル・カタルシス」
##２つ目の衛星の名を「マーダー・カタストロフィ」
##とする。
##(追記)また、上３行の名称を「クロニクル・ダークネス」通称黒歴史とする。

execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_1] run clone 12960 66 11287 12975 73 11269 ~-8 ~ ~-8 replace
execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_2] run clone 12960 66 11287 12975 73 11269 ~-8 ~ ~-8 replace
execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_1] run summon minecraft:armor_stand ~ ~1000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["tpam_e_t1"]}
execute positioned as @e[type=minecraft:armor_stand,tag=tpam_e_2] run summon minecraft:armor_stand ~ ~1000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["tpam_e_t2"]}