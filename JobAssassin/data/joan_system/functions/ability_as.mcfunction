## ノーマルアビリティ条件
execute as @a[tag=joan_as,scores={joan_nomal=1,joan_ab_n=0}] run function joan_system:effect_as

## アクティブアビリティ条件
execute as @a[tag=joan_as,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_as

## スぺシャルアビリティ条件
execute as @a[tag=joan_as,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_as

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_special 1

## パッシブアビリティ
effect give @s speed 2 1 true
effect give @s jump_boost 2 1 true

## スペシャル解除
execute as @s[scores={joan_ab_s=..1000}] run attribute @s minecraft:generic.max_health base set 20

## ノーマルアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:"\"飛翔\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"静かに背後を襲う"}]']}} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:"\"飛翔\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"静かに背後を襲う"}]']}} 1

## アクティブアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:"\"隠密\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"息を殺して潜む"}]']}} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:"\"隠密\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"息を殺して潜む"}]']}} 1

## スペシャルアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:"\"一撃\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"奇襲は一瞬で行わなければならない"}]']}} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:"\"一撃\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"奇襲は一瞬で行わなければならない"}]']}} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure] inventory.8 with minecraft:netherite_ingot{display:{Name:"\"極意\"",Lore:['[{"text":"使用不可"}]','[{"text":"基礎こそが重要"}]']}} 1