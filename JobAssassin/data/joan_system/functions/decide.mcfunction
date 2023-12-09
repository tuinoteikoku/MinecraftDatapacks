## job設定
### アサシン
execute in ja-world run tag @a[x=0,y=-7,z=-9,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_as
execute in ja-world run tp @a[x=0,y=-7,z=-9,dx=0.1,dy=0.1,dz=0.1,tag=joan_as] 0 -12 -9
### ナイト
execute in ja-world run tag @a[x=-9,y=-7,z=0,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_na
execute in ja-world run tp @a[x=-9,y=-7,z=0,dx=0.1,dy=0.1,dz=0.1,tag=joan_na] -9 -12 0

### ファイター
execute in ja-world run tag @a[x=0,y=-7,z=9,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_fa
execute in ja-world run tp @a[x=0,y=-7,z=9,dx=0.1,dy=0.1,dz=0.1,tag=joan_fa] 0 -12 9

### ウォーリア
execute in ja-world run tag @a[x=9,y=-7,z=0,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_wo
execute in ja-world run tp @a[x=9,y=-7,z=0,dx=0.1,dy=0.1,dz=0.1,tag=joan_wo] 9 -12 0

### エージェント
execute in ja-world run tag @a[x=6,y=-7,z=-6,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_er
execute in ja-world run tp @a[x=6,y=-7,z=-6,dx=0.1,dy=0.1,dz=0.1,tag=joan_er] 6 -12 -6

### ドクター
execute in ja-world run tag @a[x=-6,y=-7,z=-6,dx=0.1,dy=0.1,dz=0.1,tag=joan_select] add joan_do
execute in ja-world run tp @a[x=-6,y=-7,z=-6,dx=0.1,dy=0.1,dz=0.1,tag=joan_do] -6 -12 -6
