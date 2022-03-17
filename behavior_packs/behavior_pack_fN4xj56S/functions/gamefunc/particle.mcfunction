scoreboard players add @e[type=armor_stand,name=particle] particle 1
execute @e[scores={particle=20}] ~ ~ ~ particle minecraft:example_spiral -14 181 0
scoreboard players set @e[scores={particle=20..}] particle 0