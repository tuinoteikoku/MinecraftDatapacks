execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-45..45] at @p if block ~ ~ ~3 minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-45..45] ~ ~ ~3
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=45..135] at @p if block ~-3 ~ ~ minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=45..135] ~-3 ~ ~
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=135..-135] at @p if block ~ ~ ~-3 minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=135..-135] ~ ~ ~-3
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-135..-45] at @p if block ~3 ~ ~ minecraft:air run tp @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-135..-45] ~3 ~ ~

execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-45..45] run function joan_job:joan_fa_ns
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=45..135] run function joan_job:joan_fa_ns
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=135..-135] run function joan_job:joan_fa_ns
execute at @a[tag=joan_fa,scores={joan_fa_n=1..},y_rotation=-135..-45] run function joan_job:joan_fa_ns