## job設定
### アサシン
execute in ja-world as @a[x=0,y=-7,z=-9,tag=joan_select] run tag @a[tag=joan_select] add joan_as
execute in ja-world as @a[x=0,y=-7,z=-9,tag=joan_as] run tp @s ~ -4 ~
### ナイト
execute in ja-world as @a[x=-9,y=-7,z=0,tag=joan_select] run tag @a[tag=joan_select] add joan_na
execute in ja-world as @a[x=-9,y=-7,z=0,tag=joan_na] run tp @s ~ -4 ~

### ファイター
execute in ja-world as @a[x=0,y=-7,z=9,tag=joan_select] run tag @a[tag=joan_select] add joan_fa
execute in ja-world as @a[x=0,y=-7,z=9,tag=joan_fa] run tp @s ~ -4 ~

### ウォーリア
execute in ja-world as @a[x=9,y=-7,z=0,tag=joan_select] run tag @a[tag=joan_select] add joan_wo
execute in ja-world as @a[x=9,y=-7,z=0,tag=joan_wo] run tp @s ~ -4 ~

### エージェント
execute in ja-world as @a[x=6,y=-7,z=-6,tag=joan_select] run tag @a[tag=joan_select] add joan_er
execute in ja-world as @a[x=6,y=-7,z=-6,tag=joan_er] run tp @s ~ -4 ~

### ドクター
execute in ja-world as @a[x=-6,y=-7,z=-6,tag=joan_select] run tag @a[tag=joan_select] add joan_do
execute in ja-world as @a[x=-6,y=-7,z=-6,tag=joan_do] run tp @s ~ -4 ~
