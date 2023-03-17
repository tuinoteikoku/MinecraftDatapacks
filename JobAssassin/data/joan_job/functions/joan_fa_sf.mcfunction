execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-45..45] at @p if block ~ ~ ~5 minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-45..45] ~ ~ ~5
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=45..135] at @p if block ~-5 ~ ~ minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=45..135] ~-5 ~ ~
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=135..-135] at @p if block ~ ~ ~-5 minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=135..-135] ~ ~ ~-5
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-135..-45] at @p if block ~5 ~ ~ minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-135..-45] ~5 ~ ~

execute at @a[tag=joan_fa,gamemode=adventure,scores={joan_fa_sf=1,joan_ability_third=0}] run effect give @a[tag=joan_fa,gamemode=adventure,scores={joan_wo_nf=1,joan_ability_third=0}] minecraft:speed 10 1 true
execute at @a[tag=joan_fa,gamemode=adventure,scores={joan_fa_sf=1,joan_ability_third=0}] run effect give @a[tag=joan_fa,gamemode=adventure,scores={joan_wo_nf=1,joan_ability_third=0}] minecraft:strength 10 1 true

execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-45..45] run function joan_job:joan_fa_ss
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=45..135] run function joan_job:joan_fa_ss
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=135..-135] run function joan_job:joan_fa_ss
execute at @a[tag=joan_fa,scores={joan_fa_sf=1,joan_ability_third=0},y_rotation=-135..-45] run function joan_job:joan_fa_ss