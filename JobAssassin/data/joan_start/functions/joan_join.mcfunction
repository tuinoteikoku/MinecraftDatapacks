execute in minecraft:ja-world as @a[x=0.5,y=-62,z=0.5,distance=..3] run tag @a[x=0.5,y=-62,z=0.5,distance=..3] add joan_players
execute in minecraft:ja-world as @a[x=0.5,y=-62,z=0.5,distance=3..4] run tag @a[x=0.5,y=-62,z=0.5,distance=3..4] remove joan_players

##x,y,zの数値は参加用の部屋の中心を指定するとよい
##A,Bは同じ数字を記入する