## ノーマルアビリティ条件
execute as @a[tag=joan_wo,scores={joan_nomal=1,joan_ab_n=0}] run function joan_system:effect_wo

## アクティブアビリティ条件
execute as @a[tag=joan_wo,scores={joan_active=1,joan_ab_a=0}] run function joan_system:effect_wo

## ノーマルアビリティCt
scoreboard players remove @s[scores={joan_ab_n=1..}] joan_ab_n 1

## アクティブアビリティCt
scoreboard players remove @s[scores={joan_ab_a=1..}] joan_ab_a 1

## パッシブアビリティ
effect give @s[scores={joan_kill=1..}] speed 2 1 true
effect give @s[scores={joan_kill=2..}] jump_boost 2 1 true
effect give @s[scores={joan_kill=3..}] regeneration 2 1 true
effect give @s[scores={joan_kill=4..}] speed 2 2 true
effect give @s[scores={joan_kill=5..}] jump_boost 2 2 true

## ノーマルアイテム
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_n=0}] hotbar.6 with minecraft:iron_ingot{display:{Name:'"吸血"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"原理は不明"}]']}} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_n=1..}] hotbar.6 with minecraft:raw_iron{display:{Name:'"吸血"',Lore:['[{"text":"クールタイム中"}]','[{"text":"原理は不明"}]']}} 1

## アクティブアイテム
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_a=0}] hotbar.7 with minecraft:copper_ingot{display:{Name:'"心眼"',Lore:['[{"text":"Qキーで使用"}]','[{"text":"心の目で見れば見えないものも見える"}]']}} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure,scores={joan_ab_a=1..}] hotbar.7 with minecraft:raw_copper{display:{Name:'"心眼"',Lore:['[{"text":"クールタイム中"}]','[{"text":"心の目で見れば見えないものも見える"}]']}} 1

## パッシブアイテム&その他
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure] inventory.8 with minecraft:netherite_ingot{display:{Name:'"興奮"',Lore:['[{"text":"使用不可"}]','[{"text":"興奮を止めることはできない"}]']}} 1
item replace entity @a[tag=joan_wo,tag=joan_play,gamemode=adventure] hotbar.8 with minecraft:barrier{display:{Name:'"空欄"',Lore:['[{"text":"使用不可"}]','[{"text":"謎の空白、なにもない"}]']}} 1