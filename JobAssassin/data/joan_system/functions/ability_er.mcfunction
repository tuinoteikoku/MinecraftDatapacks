## ノーマルアビリティ条件
execute as @a[tag=joan_er,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_er

## アクティブアビリティ条件
execute as @a[tag=joan_er,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_er

## スぺシャルアビリティ条件
execute as @a[tag=joan_er,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_er

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_ab_s 1

## パッシブアビリティ
scoreboard players add @s[scores={joan_sneakA=..-1}] joan_sneakA 1
effect give @s[scores={joan_sneakA=1..}] minecraft:invisibility 1 1 true
effect give @s[scores={joan_sneakA=1..}] minecraft:speed 1 10 true
scoreboard players remove @s[scores={joan_sneakA=2..}] joan_sneakA 1
effect clear @s[scores={joan_sneakA=0}] minecraft:invisibility
effect clear @s[scores={joan_sneakA=0}] minecraft:speed
scoreboard players remove @s[scores={joan_sneakA=1..}] joan_sneakA 1
scoreboard players set @s[scores={joan_sneakB=600..}] joan_sneakA -400
scoreboard players set @s[scores={joan_sneakA=..-1}] joan_sneakB 0

## ノーマルアイテム
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"食中毒"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"一服盛られたか？"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50126} 1
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"食中毒"',Lore:['[{"text":"クールタイム中"}]','[{"text":"一服盛られたか？"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50426} 1

## アクティブアイテム
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"蒼穹の雲隠れ"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"多大なる被害を引き起こそう"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50226} 1
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"蒼穹の雲隠れ"',Lore:['[{"text":"クールタイム中"}]','[{"text":"多大なる被害を引き起こそう"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50526} 1

## スペシャルアイテム
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:'"パンデミック"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"更に大きく騒がせよう"}]','[{"text":"[スぺシャル]"}]']},CustomModelData:50326} 1
item replace entity @a[tag=joan_er,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:'"パンデミック"',Lore:['[{"text":"クールタイム中"}]','[{"text":"更に大きく騒がせよう"}]','[{"text":"[スペシャル]"}]']},CustomModelData:50626} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_er,tag=joan_play] inventory.8 with minecraft:netherite_ingot{display:{Name:'"ストーキング"',Lore:['[{"text":"使用不可"}]','[{"text":"謀略に思考を巡らせろ"}]','[{"text":"[パッシブ]"}]']},CustomModelData:50026} 1