execute at @e[scores={reset= 1}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["reset"], Invisible: 1}

execute at @e[type=minecraft:armor_stand, tag=reset] run execute as @p run scoreboard players reset @s math
execute at @e[type=minecraft:armor_stand, tag=reset] run execute as @p run scoreboard players reset @s num1
execute at @e[type=minecraft:armor_stand, tag=reset] run execute as @p run scoreboard players reset @s num2
execute at @e[type=minecraft:armor_stand, tag=reset] run execute as @p run scoreboard players reset @s operations

execute at @e[type=minecraft:armor_stand, tag=reset] run execute as @p run scoreboard players reset @s reset
execute as @e[type=minecraft:armor_stand, tag=reset] run kill @s

scoreboard players enable @a reset