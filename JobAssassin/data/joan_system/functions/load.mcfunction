## 各種スコアボード制作 ※1
scoreboard objectives add joan_timer dummy
### タイマー用のスコアボード
scoreboard objectives add joan_ab_n dummy
scoreboard objectives add joan_ab_a dummy
scoreboard objectives add joan_ab_s dummy
### スキルのCT用スコアボード
scoreboard objectives add jona_normal minecraft.dropped:minecraft.copper_ingot
scoreboard objectives add jona_active minecraft.dropped:minecraft.iron_ingot
scoreboard objectives add jona_special minecraft.dropped:minecraft.gold_ingot
### スキルの発動検知用スコアボード
scoreboard objectives add joan_ticket dummy
### 順位用のスコアボード
scoreboard objectives add joan_live dummy
### プレーヤー入退出検知用スコアボード
scoreboard objectives add joan_Ptimer dummy
scoreboard objectives add joan_Ctimer dummy
### ゲーム参加人数カウント用のスコアボード
scoreboard objectives add joan_killed minecraft.killed:player
### 死亡確認用スコアボード
scoreboard objectives add joan_death minecraft.custom:deaths
### タイマー用bossbarの設定
bossbar add minecraft:joan_time "残り時間"
bossbar set minecraft:joan_time players @a[tag=joan_play]
bossbar set minecraft:joan_time max 72000
bossbar set minecraft:joan_time style notched_20
bossbar set minecraft:joan_time visible false