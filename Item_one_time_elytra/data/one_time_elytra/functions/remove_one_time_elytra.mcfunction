### Copyright © 2022 よしたこ
### 手持ちの使い捨て落下傘を破壊するファンクション

#手持ちの使い捨て落下傘を破壊する
clear @s minecraft:elytra{OneTimeElytraTag:1}

#使い捨て落下傘で攻撃した実績を消す
advancement revoke @s only one_time_elytra:one_time_elytra_fall

#自分のみセリフを表示、破壊の効果音を表示
tellraw @s [{"text":"使い捨て落下傘は壊れてしまった…"}]
playsound entity.item.break block @s