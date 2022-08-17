### 魔法陣でドッカンがテーマ
## ド派手に爆破しよう！
tp @s ^ ^ ^-1
execute unless block ^ ^ ^ air run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0 1 force
execute unless block ^ ^ ^ air run function bomb:no1/summon_magic
execute unless entity @a[distance=..20] run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0 1 force
execute unless entity @a[distance=..20] run function bomb:no1/summon_magic