tellraw @a ["",{"text":"Minecraft "},{"text":"calculator","underlined":true},{"text":" Datapack "},{"text":"V1.00","color":"aqua"},{"text":" By "},{"text":"[Connor Slade]","color":"green","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/basicprogrammer10/"}}]
scoreboard objectives add num1 trigger
scoreboard objectives add num2 trigger
scoreboard objectives add math dummy
scoreboard objectives add domath trigger
scoreboard objectives add operation trigger
scoreboard objectives add reset trigger

scoreboard players enable @a num1
scoreboard players enable @a num2
scoreboard players enable @a domath
scoreboard players enable @a reset
scoreboard players enable @a operation
