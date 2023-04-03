##system,start
function joan_start:joan_join
function joan_player_count
##function joan_start:joan_noplayer
##function joan_system:joan_jobreset
function joan_start:joan_jobitem
function joan_start:joan_jobselect
function joan_start:joan_time_finish
function joan_start:joan_only_finish
function joan_start:joan_death
function joan_start:joan_delete

scoreboard players remove @a[scores={joan_ability_first=1..}] joan_ability_first 1
scoreboard players remove @a[scores={joan_ability_second=1..}] joan_ability_second 1
scoreboard players remove @a[scores={joan_ability_third=1..}] joan_ability_third 1
scoreboard players remove @e[name="joan_timer",scores={joan_timer=1..}] joan_timer 1

##joan_timerのアーマースタンドが壊れた時用のコマンド
##/summon minecraft:armor_stand 0.5 0 5.5 {Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"joan_timer"}',Tags:["joan_timer"]}