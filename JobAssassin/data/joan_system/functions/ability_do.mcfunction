## ノーマルアビリティ条件
execute as @a[tag=joan_do,scores={joan_normal=1,joan_ab_n=0}] run function joan_system:effect_do

## アクティブアビリティ条件
execute as @a[tag=joan_do,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_do

## スぺシャルアビリティ条件
execute as @a[tag=joan_do,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_do

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_ab_s 1

## パッシブアビリティ
effect give @s regeneration 1 1 true
effect clear @s poison
effect clear @s wither

##アクティブアビリティ効果
attribute @s[scores={joan_active=0,joan_ab_a=401..600}] minecraft:generic.max_health base set 14
attribute @s[scores={joan_active=0,joan_ab_a=400}] minecraft:generic.max_health base set 20

##スペシャルアビリティ効果
attribute @s[scores={joan_special=0,joan_ab_s=3300}] minecraft:generic.max_health base set 30
effect give @s[scores={joan_special=0,joan_ab_s=3300}] strength 40 3 true
effect give @s[scores={joan_special=0,joan_ab_s=3300}] regeneration 40 3 true
effect give @s[scores={joan_special=0,joan_ab_s=3300}] speed 40 2 true
effect give @s[scores={joan_special=0,joan_ab_s=3300}] jump_boost 40 2 true
effect give @s[scores={joan_special=0,joan_ab_s=3300}] saturation 40 1 true
attribute @s[scores={joan_special=0,joan_ab_s=2500}] minecraft:generic.max_health base set 20

## ノーマルアイテム
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"処方箋"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"スニーク時間によって様々な効果のポーションを取得できる"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50125} 1
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"処方箋"',Lore:['[{"text":"クールタイム中"}]','[{"text":"スニーク時間によって様々な効果のポーションを取得できる"}]','[{"text":"[ノーマル]"}]']},CustomModelData:50425} 1

## アクティブアイテム
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"セカンドオピニオン"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"移動速度と跳躍力の上昇の後、一時的な体力上限の減少"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50225} 1
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"セカンドオピニオン"',Lore:['[{"text":"クールタイム中"}]','[{"text":"移動速度と跳躍力の上昇の後、一時的な体力上限の減少"}]','[{"text":"[アクティブ]"}]']},CustomModelData:50525} 1

## スペシャルアイテム
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:'"ワクチン接種"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"一時的な体力減少の後、莫大な恩恵を得られる"}]','[{"text":"[スぺシャル]"}]']},CustomModelData:50325} 1
item replace entity @a[tag=joan_do,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:'"ワクチン接種"',Lore:['[{"text":"クールタイム中"}]','[{"text":"一時的な体力減少の後、莫大な恩恵を得られる"}]','[{"text":"[スペシャル]"}]']},CustomModelData:50625} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_do,tag=joan_play] inventory.8 with minecraft:netherite_ingot{display:{Name:'"血清療法"',Lore:['[{"text":"使用不可"}]','[{"text":"毒とウィザー状態無効"}]','[{"text":"[パッシブ]"}]']},CustomModelData:50025} 1