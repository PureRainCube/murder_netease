execute @e[type=armor_stand,name=spawn] ~ ~ ~ xp -999999999l @a[r=60,l=3]
xp -999999999l @a[x=0,y=100,z=0,r=10]
clear @a[x=0,y=100,z=0,r=10]
execute @a[x=0,y=100,z=0,r=10] ~ ~ ~ playsound mob.ghast.death @s ~ ~ ~ 999999999 0.5
execute @a[x=0,y=100,z=0,r=10] ~ ~ ~ title @s title §c§l您被摔死了
clear @a[l=4,lm=4]
scoreboard players add @a old 0
clear @a[scores={old=0}]
tp @a[scores={old=0}] -18 181 0 270 0
scoreboard players set @a[scores={old=0}] old 1
scoreboard players set @a death 1
scoreboard players set @e[type=player] death 0
scoreboard players add @a[scores={death=1,died=0}] deathCount 1
scoreboard players set @a[scores={death=1,died=0}] died 1
scoreboard players set @e[type=player,scores={death=0}] died 0
scoreboard players set @a[scores={deathCount=1..}] old 0
scoreboard players reset @a[scores={deathCount=1..}] deathCount