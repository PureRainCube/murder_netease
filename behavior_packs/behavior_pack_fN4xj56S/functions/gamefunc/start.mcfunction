scoreboard players add @e[scores={start=1..}] start 1
execute @e[scores={start=20}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 1
execute @e[scores={start=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏将在 §c5 §e秒后开始!"}]}
execute @e[scores={start=40}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 1
execute @e[scores={start=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏将在 §c4 §e秒后开始!"}]}
execute @e[scores={start=60}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 1
execute @e[scores={start=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏将在 §c3 §e秒后开始!"}]}
execute @e[scores={start=80}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 1
execute @e[scores={start=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏将在 §c2 §e秒后开始!"}]}
execute @e[scores={start=100}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 1
execute @e[scores={start=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏将在 §c1 §e秒后开始!"}]}
execute @e[scores={start=120}] ~ ~ ~ execute @e[scores={text=1}] ~ ~ ~ tp ~ ~100 ~
execute @e[scores={start=120}] ~ ~ ~ execute @a ~ ~ ~ playsound note.pling @a ~ ~ ~ 999999999 2
execute @e[scores={start=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e游戏开始!"}]}
execute @e[scores={start=120}] ~ ~ ~ clear @a[x=-15,y=181,z=-1,dx=2,dy=1,dz=2]
execute @e[scores={start=120}] ~ ~ ~ tp @a[x=-15,y=181,z=-1,dx=2,dy=1,dz=2] -8 162 0 270 0
execute @e[scores={start=120}] ~ ~ ~ setblock 1009 2 -10 unpowered_comparator 1
execute @e[scores={start=120}] ~ ~ ~ setblock 1008 2 -9 air
execute @e[scores={start=120}] ~ ~ ~ fill 1007 1 -8 1007 1 -4 air
execute @e[scores={start=120}] ~ ~ ~ setblock 997 1 8 redstone_block
execute @e[scores={start=120}] ~ ~ ~ scoreboard players set @e[name=game,type=armor_stand] game 1
scoreboard players reset @e[scores={start=120..}] start