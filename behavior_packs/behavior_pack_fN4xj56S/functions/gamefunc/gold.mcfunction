execute @e[scores={game=1..6000}] ~ ~ ~ scoreboard players add @e[name=Gold,type=armor_stand] gold 1
execute @e[name=Gold,type=armor_stand,scores={gold=40}] ~ ~ ~ setblock 1001 2 4 air 0 destroy
scoreboard players reset @e[name=Gold,type=armor_stand,scores={gold=40..}] gold