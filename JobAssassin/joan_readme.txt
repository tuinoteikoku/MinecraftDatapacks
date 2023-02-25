入っているもの
基本的な動作システム
アサシンの能力(P,N,A,S)
ファイターの能力(P,N,A)
ナイトの能力(P)
ウォーリアの能力(P)
アイテム系統


現状追加予定のもの
範囲収縮
アイテム投下(支援物資)
自動開始&ループ
JOB能力
ネームタグ不可視化
マップギミック類


導入してからすること
tick.jsonとスコアボードのfunctionを起動
開始時に

/function joan_start:joan_start

を使用


もしタイマーのアーマースタンドが壊れた場合

/summon minecraft:armor_stand 0.5 0 5.5 {Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"joan_timer"}'}

を使用する