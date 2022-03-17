execute @e[scores={game=1..6000}] ~ ~ ~ scoreboard players add @e[name=arrow,type=armor_stand] arrow 1
execute @e[name=arrow,type=armor_stand,scores={arrow=1200}] ~ ~ ~ clear @a[l=3,lm=3] arrow 0 1
execute @e[name=arrow,type=armor_stand,scores={arrow=1200}] ~ ~ ~ give @a[l=3,lm=3] arrow 1
scoreboard players reset @e[name=arrow,type=armor_stand,scores={arrow=1200..}] arrow