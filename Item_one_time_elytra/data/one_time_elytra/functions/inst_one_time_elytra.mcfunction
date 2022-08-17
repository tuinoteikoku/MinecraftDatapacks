### Copyright © 2022 よしたこ
### 使い捨て落下傘を取り出す際のファンクション

#胴に装備がある場合、装着できない
tellraw @s [{"text":"落下傘と落下耐性効果(1分40秒)を装着しました。急いで飛び立とう！"}]
item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"使い捨て落下傘"}',Lore:['[{"text":"終の帝国から支給された落下傘です。"}]','[{"text":"非常に質素な作りで装着すれば外すのは難しく、また着地時に壊れてしまいます。"}]']},HideFlags:0,Enchantments:[{id:binding_curse,lvl:1}],OneTimeElytraTag:1}
effect give @s jump_boost 100 255 true