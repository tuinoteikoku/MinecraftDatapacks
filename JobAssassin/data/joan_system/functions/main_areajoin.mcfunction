##タグ「searchjoin」が付与されているアーマースタンドの半径5ブロック以内にいるプレイヤーを検知、スコアボード「joan_join」に追加
execute at @e[type=minecraft:armor_stand,tag=searchjoin] store result score @a joan_join run title @a[distance=..6] subtitle ""

##タグ「searchjoin」が付与されているアーマースタンドの半径5ブロック以内より外に出たプレイヤーのスコアをリセット
execute at @e[type=minecraft:armor_stand,tag=searchjoin] run scoreboard players set @a[distance=7..] joan_join 0