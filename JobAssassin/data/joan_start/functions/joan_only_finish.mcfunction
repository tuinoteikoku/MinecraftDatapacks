<<<<<<< Updated upstream
execute in ja-world store result score @a[tag=joan_playing,gamemode=adventure] joan_playmember run scoreboard players remove @a[tag=joan_playing] joan_timer 1
execute in ja-world at @e[name=joan_timer,type=armor_stand,scores={joan_timer=1..}] as @a[tag=joan_playing,scores={joan_playmember=1}] run tp @a 0.5 -63 10
=======
execute in ja-world store result score @a[tag=joan_playing,gamemode=adventure] joan_playmember run scoreboard players remove @a[tag=joan_playing] joan_timer 1
execute in ja-world at @e[name=joan_timer,type=armor_stand,scores={joan_timer=1..}] as @a[tag=joan_playing,scores={joan_playmember=1}] run tp @a 0.5 -63 10
>>>>>>> Stashed changes
execute in ja-world at @e[name=joan_timer,type=armor_stand,scores={joan_timer=1..}] as @a[tag=joan_playing,scores={joan_playmember=1}] run function joan_start:joan_reset