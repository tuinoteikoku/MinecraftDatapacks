## ノーマルアビリティ条件
execute as @a[tag=joan_na,scores={joan_nomal=1,joan_ab_n=0}] run function joan_system:effect_na

## アクティブアビリティ条件
execute as @a[tag=joan_na,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_na

## スぺシャルアビリティ条件
execute as @a[tag=joan_na,scores={joan_special=1,joan_ab_s=0}] run function joan_system:effect_na

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_normal 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_active 1

## スぺシャルアビリティCt
scoreboard players remove @s[scores={joan_ab_s=1..}] joan_special 1

## パッシブアビリティ
effect give @s resistance 2 1 true

## ノーマルアイテム
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:"\"調整\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"食事は必要最低限"}]']}} 1
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:"\"調整\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"食事は必要最低限"}]']}} 1

## アクティブアイテム
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:"\"連撃\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"攻撃こそ最大の防御"}]']}} 1
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:"\"連撃\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"攻撃こそ最大の防御"}]']}} 1

## スペシャルアイテム
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_s=0}] hotbar.8 with minecraft:gold_ingot{display:{Name:"\"甲冑\"",Lore:['[{"text":"Qキーで使用"}]','[{"text":"更に硬さを求めよ"}]']}} 1
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure,scores={joan_ab_s=1..}] hotbar.8 with minecraft:raw_gold{display:{Name:"\"甲冑\"",Lore:['[{"text":"クールタイム中"}]','[{"text":"更に硬さを求めよ"}]']}} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_na,tag=joan_play,gamemode=adventure] inventory.8 with minecraft:netherite_ingot{display:{Name:"\"維持\"",Lore:['[{"text":"使用不可"}]','[{"text":"現状維持を心がける"}]']}} 1