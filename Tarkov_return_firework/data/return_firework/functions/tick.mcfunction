### Copyright © 2022 よしたこ
### 毎ティック処理。発煙筒による防具建てが存在する場合、tick_secを呼び出す。

#発煙筒による防具建てが存在する場合、tick_secを呼び出す。
execute if score #return_firework return_firework.firework_num matches 1.. run function return_firework:tick_sec