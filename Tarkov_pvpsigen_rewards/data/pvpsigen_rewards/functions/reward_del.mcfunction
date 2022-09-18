### Copyright © 2022 よしたこ
### 設置済防具建て地点から各種情報を削除する処理

## 防具建て位置の報酬チェストを削除
execute at @s run setblock ~ ~ ~ air 

## 防具建て位置のforceload(強制読み込みチャンク)を削除
execute at @s run forceload remove ~-1 ~-1 ~1 ~1

## 自分を削除
kill @s