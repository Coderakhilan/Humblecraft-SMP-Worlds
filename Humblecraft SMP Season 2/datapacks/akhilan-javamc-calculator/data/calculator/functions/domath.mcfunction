execute at @e[scores={domath= 1}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["domath"], Invisible: 1}
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run scoreboard players operation @s math = @s num1
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 1 run scoreboard players operation @s math += @s num2
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 2 run scoreboard players operation @s math -= @s num2
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 3 run scoreboard players operation @s math *= @s num2
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 4 run scoreboard players operation @s math /= @s num2
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 5 run scoreboard players operation @s math %= @s num2
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run scoreboard players set @p domath 0
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 1 run title @s subtitle ["",{"score":{"name":"@s","objective":"num1"}},{"text":" + "},{"score":{"name":"@s","objective":"num2"}}]
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 2 run title @s subtitle ["",{"score":{"name":"@s","objective":"num1"}},{"text":" - "},{"score":{"name":"@s","objective":"num2"}}]
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 3 run title @s subtitle ["",{"score":{"name":"@s","objective":"num1"}},{"text":" * "},{"score":{"name":"@s","objective":"num2"}}]
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 4 run title @s subtitle ["",{"score":{"name":"@s","objective":"num1"}},{"text":" / "},{"score":{"name":"@s","objective":"num2"}}]
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run execute if score @s operation matches 5 run title @s subtitle ["",{"score":{"name":"@s","objective":"num1"}},{"text":" % "},{"score":{"name":"@s","objective":"num2"}}]
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run title @s title {"score":{"name":"@s","objective":"math"}}
execute at @e[type=minecraft:armor_stand, tag=domath] run execute as @p run scoreboard players reset @s math
execute as @e[type=minecraft:armor_stand, tag=domath] run kill @s
scoreboard players enable @a domath