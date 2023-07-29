## 試合中でなく参加人数を満たしているか(Tag&Score:joan_join)
# Tag[joan_join]の付与、剥奪
execute in minecraft:ja-world at @e[tag=joan_timer,tag=joan_join,scores={joan_timer=-1}] run tag @a[x=0.5,y=-62,z=0.5,distance=..4] add joan_join
execute in minecraft:ja-world at @e[tag=joan_timer,tag=joan_join,tag=joan_wait] run tag @a[x=0.5,y=-62,z=0.5,distance=..4] add joan_join
execute in minecraft:ja-world at @e[tag=joan_timer,tag=joan_join,scores={joan_timer=-1}] run tag @a[x=0.5,y=-62,z=0.5,distance=5..] remove joan_join
execute in minecraft:ja-world at @e[tag=joan_timer,tag=joan_join,tag=joan_wait] run tag @a[x=0.5,y=-62,z=0.5,distance=5..] remove joan_join
execute in minecraft:ja-world at @e[tag=joan_timer,tag=joan_join,scores={joan_timer=-1}] run scoreboard players set @a[x=0.5,y=-62,z=0.5,distance=5..] joan_join 0

# Tag[joan_join]所持者の人数カウント
execute store result score @a[tag=joan_join] joan_join run effect give @a[tag=joan_join] minecraft:glowing 1 1 true
execute if entity @e[tag=joan_timer,scores={joan_timer=-1}] in ja-world as @a[scores={joan_join=4..}] run function joan_system:waiting

## 参加者希望者の参加猶予のカウント中か(Tag:joan_wait)
execute in ja-world as @e[tag=joan_timer,tag=joan_wait] run function joan_system:joining

## ジョブ選択が終わったか(Tag:joan_select)
execute in ja-world as @e[tag=joan_timer,tag=joan_select] run function joan_system:select

## 試合が始まっているか(Tag:joan_playing)
execute in ja-world as @e[tag=joan_timer,tag=joan_playing] run function joan_system:play

## 試合中以外にMAPに人がいるか(debug班以外)
execute in ja-world as @a[tag=!joan_debug,x=-200,dx=400,y=58,dy=200,z=-200,dz=400] if entity @e[tag=joan_timer,tag=joan_join] run function joan_system:leave 

# Tag[joan_play]の人数カウント
execute store result score @a[tag=joan_play,gamemode=adventure] joan_live run effect give @a[tag=joan_play,gamemode=adventure] minecraft:unluck 1 0 true