## ノーマルアビリティ条件
execute as @a[tag=joan_wo,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_wo

## アクティブアビリティ条件
execute as @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_wo

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## パッシブアビリティ
effect give @s[scores={joan_killed=1..}] speed 2 1 true
effect give @s[scores={joan_killed=2..}] jump_boost 2 1 true
effect give @s[scores={joan_killed=3..}] regeneration 2 1 true
effect give @s[scores={joan_killed=4..}] speed 2 2 true
effect give @s[scores={joan_killed=5..}] jump_boost 2 2 true

effect give @s[scores={joan_killed=1..}] strength 2 1 true
effect give @s[scores={joan_killed=2..}] strength 2 2 true
effect give @s[scores={joan_killed=3..}] strength 2 3 true
effect give @s[scores={joan_killed=4..}] strength 2 4 true
effect give @s[scores={joan_killed=5..}] strength 2 5 true

## ノーマルアイテム
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"自己再生"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"一時事的な回復、キル数に応じて強化される"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50104} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"自己再生"',Lore:['[{"text":"クールタイム中"}]','[{"text":"一時事的な回復、キル数に応じて強化される"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50404} 1

## アクティブアイテム
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"心眼"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"半径30ブロック前後に対し発光を付与"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50204} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"心眼"',Lore:['[{"text":"クールタイム中"}]','[{"text":"半径30ブロック前後に対し発光を付与"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50504} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure] inventory.8 with minecraft:netherite_ingot{display:{Name:'"アドレナリン"',Lore:['[{"text":"使用不可"}]','[{"text":"キル数に応じて強化"}]','[{"text":"[パッシブ]"}]']},CustomModelData:50004} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure] hotbar.8 with minecraft:barrier{display:{Name:'"空欄"',Lore:['[{"text":"使用不可"}]','[{"text":"何かあると思ったの？"}]']},CustomModelData:50304} 1