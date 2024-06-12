scoreboard players enable @a num1
scoreboard players enable @a num2
scoreboard players enable @a operation
scoreboard players enable @a reset

execute if score @r domath matches 1 run function calculator:domath
execute if score @r reset matches 1 run function calculator:reset