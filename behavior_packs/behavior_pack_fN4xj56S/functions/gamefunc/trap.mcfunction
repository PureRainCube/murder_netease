execute @a[x=0,y=100,z=0,r=10] ~ ~ ~ tellraw @a {"rawtext":[{"text":"一名玩家已被击杀"}]}
tp @a[x=0,y=100,z=0,r=10] -18 181 0 270 0
scoreboard players add @e[scores={trap=1..}] trap 1
execute @e[scores={trap=10}] ~ ~ ~ execute @a ~ ~ ~ playsound tile.piston.out @a ~ ~ ~ 1000000
execute @e[scores={trap=200}] ~ ~ ~ execute @a ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1000000
execute @e[scores={trap=8}] ~ ~ ~ clone 1000 11 0 1010 11 10 -5 160 -5
execute @e[scores={trap=10}] ~ ~ ~ clone 1000 10 0 1010 10 10 -5 160 -5
execute @e[scores={trap=12}] ~ ~ ~ clone 1000 9 0 1010 9 10 -5 160 -5
execute @e[scores={trap=198}] ~ ~ ~ clone 1000 10 0 1010 10 10 -5 160 -5
execute @e[scores={trap=200}] ~ ~ ~ clone 1000 11 0 1010 11 10 -5 160 -5
execute @e[scores={trap=202}] ~ ~ ~ clone 1000 12 0 1010 12 10 -5 160 -5
execute @e[scores={trap=400}] ~ ~ ~ setblock 8 163 -9 stone_button 5
execute @e[scores={trap=400}] ~ ~ ~ setblock 8 163 9 stone_button 5
execute @e[scores={trap=400}] ~ ~ ~ setblock 13 163 0 stone_button 1
execute @e[scores={trap=400}] ~ ~ ~ setblock 18 169 0 stone_button 1
scoreboard players reset @e[scores={trap=400..}] trap