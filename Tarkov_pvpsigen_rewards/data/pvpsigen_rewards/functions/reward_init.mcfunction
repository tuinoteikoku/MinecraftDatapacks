### Copyright © 2022 よしたこ
### 防具建ての設置
### 設置した防具建てに対してreward_init_setを実行

## 防具建てをPVP資源ワールド 0 100 0に配置
execute in minecraft:sigenpro run summon armor_stand 0 100 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["reward_chest"]}
#execute in minecraft:overworld run summon armor_stand 0 100 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["reward_chest"]}

### 生成した防具建てに対するセッティング処理へ
execute as @e[tag=reward_chest,tag=!set] run function pvpsigen_rewards:reward_init_set