## ノーマルアビリティ条件
execute as @a[tag=joan_fa,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_fa

## アクティブアビリティ条件
execute as @a[tag=joan_fa,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_fa

## スぺシャルアビリティ条件
execute as @a[tag=joan_fa,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_fa

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_ab_s 1

## パッシブアビリティ
effect give @s speed 2 1 true

## ノーマルアイテム
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"スタートダッシュ"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"誰よりも早く"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50102} 1
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"スタートダッシュ"',Lore:['[{"text":"クールタイム中"}]','[{"text":"誰よりも早く"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50402} 1

## アクティブアイテム
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"ビルドアップ"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"最速で行動せよ"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50202} 1
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"ビルドアップ"',Lore:['[{"text":"クールタイム中"}]','[{"text":"最速で行動せよ"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50502} 1

## スペシャルアイテム
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:'"火事場の馬鹿力"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"力を振り絞れ"}]','[{"text":"[スぺシャル]"}]']},CustomModelData:50302} 1
item replace entity @a[tag=joan_fa,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:'"火事場の馬鹿力"',Lore:['[{"text":"クールタイム中"}]','[{"text":"力を振り絞れ"}]','[{"text":"[スペシャル]"}]']},CustomModelData:50602} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_fa,tag=joan_play] inventory.8 with minecraft:netherite_ingot{display:{Name:'"疾走"',Lore:['[{"text":"使用不可"}]','[{"text":"速さを追い求めろ"}]','[{"text":"[パッシブ]"}]']},CustomModelData:50002} 1