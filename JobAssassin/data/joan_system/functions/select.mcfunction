## job選択
function joan_system:decide

## 待機中の体力,空腹減少
execute in minecraft:ja-world run effect give @a[tag=!joan_play] saturation 1 1
execute in minecraft:ja-world run effect give @a[tag=!joan_play] regeneration 1 1

## job選択完了
execute in minecraft:ja-world unless entity @a[x=-200,dx=400,y=-50,dy=250,z=-200,dz=400,tag=joan_select] run function joan_system:start

title @a[tag=joan_debug] actionbar {"text":"select and decide"}