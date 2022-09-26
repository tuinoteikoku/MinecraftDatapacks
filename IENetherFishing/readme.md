# ネザー釣りデータパック
author:X_Soo_X

## なんぞこれ
+ 特定の釣り竿でネザーの溶岩に糸を垂らすことで疑似的に釣りが行える代物。
+ 釣れるものに関しては後述のloot_tables/nether_fishing_table.json内に
定義してあるんでそこを弄れば自由に釣れるものが変えられるよ

## セットアップ
+ 導入後、必ず"function nether_fishing:initialize_nether_fishing"を実行すること。
でないと釣れないよ。

+ ネザー釣り用の釣り竿は"function nether_fishing:item/give_nether_fishing_rod"を実行することで手に入る。
  + 見た目等を変更したい場合はここのアイテムを編集する感じで。 

## 各functionについて

+ 各functionの役割についてはそれぞれのmcfunctionファイル内にコメントとして記載しているのでそちらの方を参照してくだしあ。

## 各jsonについて
+ jsonファイルについてはコメントできないんでこちらに記載。

### loot_tablesフォルダ
#### nether_fishing_table.json
+ ネザー釣りで得られる報酬を記載してます。
+ サンプルとして４種類のアイテムを定義。ここのルートテーブルを編集することで報酬を変更することが出来る。
+ lootの書き方については外部サイト参照

### pridicates
#### chance_01.json
+ ネザー釣り中の抽選を定義しています。
+ 毎tick、このpridicatesの確率で抽選し、ヒット扱いとします。
+ とりあえず１％での抽選にしている模様。

#### is_fluid_in_lava.json
+ 浮きが溶岩内に居るかどうかを判定するpridicate
+ ……のはずだったけど何故かネザー内では動作せず。仕方なくif blockの処理で代用している。
+ fluidの判定がネザー内では無効なのか、原因は不明。とりあえずサンプルとして記載。

#### is_in_nether.json
+ プレイヤーがネザー内にいるかどうかを判定するpridicate

#### is_used_nether_fishing_rod.json
+ ネザー釣りの釣り竿を使用したかどうかを判定するpridicate
+ ちなみにネザー釣りの釣り竿の判定はnbtタグの{NetherFishingRodTag:1}で行ってる