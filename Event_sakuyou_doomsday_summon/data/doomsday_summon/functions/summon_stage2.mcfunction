### Copyright © 2022 よしたこ
### 防具建てによる召喚ファンクション(襲撃編)

execute if score #doomsday_summon doomsday.random matches 1 run execute at @s run summon minecraft:vindicator ~ ~ ~ {Tags:["doomsday"],HandItems:[{id:"iron_axe",Count:1}]}
execute if score #doomsday_summon doomsday.random matches 2 run execute at @s run summon minecraft:vindicator ~ ~ ~ {Tags:["doomsday"],HandItems:[{id:"iron_axe",Count:1}]}
execute if score #doomsday_summon doomsday.random matches 3 run execute at @s run summon minecraft:pillager ~ ~ ~ {Tags:["doomsday"],HandItems:[{id:"crossbow",Count:1}]}
execute if score #doomsday_summon doomsday.random matches 4 run execute at @s run summon minecraft:illusioner ~ ~ ~ {Tags:["doomsday"],HandItems:[{id:"bow",Count:1}]}
execute if score #doomsday_summon doomsday.random matches 5 run execute at @s run summon minecraft:ravager ~ ~ ~ {Tags:["doomsday"]}
execute if score #doomsday_summon doomsday.random matches 6 run execute at @s run summon minecraft:evoker ~ ~ ~ {Tags:["doomsday"]}