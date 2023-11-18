## ノーマルアビリティ条件
execute as @a[tag=joan_as,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_as

## アクティブアビリティ条件
execute as @a[tag=joan_as,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_as

## スぺシャルアビリティ条件
execute as @a[tag=joan_as,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_as

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_ab_s 1

## パッシブアビリティ
effect give @s speed 2 1 true
effect give @s jump_boost 2 1 true

## スペシャル解除
execute as @s[scores={joan_ab_s=..2400}] run attribute @s minecraft:generic.max_health base set 20

## ノーマルアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"軽やかな足取り"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"一時的に移動速度と跳躍力が超上昇する"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50101} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"軽やかな足取り"',Lore:['[{"text":"クールタイム中"}]','[{"text":"一時的に移動速度と跳躍力が超上昇する"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50401} 1

## アクティブアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"ハイド＆シーク"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"数秒間透明化する"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50201} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"ハイド＆シーク"',Lore:['[{"text":"クールタイム中"}]','[{"text":"数秒間透明化する"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50501} 1

## スペシャルアイテム
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:'"華麗なる犯行"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"一時的な体力と攻撃力の上昇"}]','[{"text":"[スペシャル]"}]']},CustomModelData:50301} 1
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:'"華麗なる犯行"',Lore:['[{"text":"クールタイム中"}]','[{"text":"一時的な体力と攻撃力の上昇"}]','[{"text":"[スペシャル]"}]']},CustomModelData:50601} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_as,tag=joan_play,gamemode=adventure] inventory.8 with minecraft:netherite_ingot{display:{Name:'"戦場の極意"',Lore:['[{"text":"使用不可"}]','[{"text":"移動速度と跳躍力の上昇"}]','[{"text":"[パッシブ]"}]']},CustomModelData:50001} 1