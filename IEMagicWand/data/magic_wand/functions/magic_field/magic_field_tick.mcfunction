execute as @e[type=armor_stand,tag=magic_field,scores={MagicID=201}] run function magic_wand:magic_field/magic_field_tick_heal
execute as @e[type=armor_stand,tag=magic_field,scores={MagicID=202}] run function magic_wand:magic_field/magic_field_tick_poison

# 消滅判定
execute as @e[type=armor_stand,tag=magic_field] run scoreboard players add @s BombDelay 1
#
# Copyright © 2023 X_Soo_X
#
# @brief  フィールド魔法tick処理
# @author X_Soo_X
# @detail フィールド魔法終了判定と各種フィールド魔法の効果適応を実行する
# @note   


execute as @e[type=armor_stand,tag=magic_field,scores={MagicID=201}] run function magic_wand:magic_field/magic_field_tick_heal
execute as @e[type=armor_stand,tag=magic_field,scores={MagicID=202}] run function magic_wand:magic_field/magic_fiend_tick_poison
execute as @e[type=armor_stand,tag=magic_field,scores={MagicID=203}] run function magic_wand:magic_field/magic_fiend_tick_slowness
execute as @e[type=armor_stand,tag=magic_field] if score @s BombDelay >= CONST_BOMB_DELAY_60 BombDelay run kill @s