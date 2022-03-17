clear @a[x=-18,y=181,z=0,r=1]
xp -999l @a[x=-18,y=181,z=0,r=1]
scoreboard players add @e[scores={game=1..}] game 1
execute @e[scores={game=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c30 §e秒后获得武器!"}]}
execute @e[scores={game=30}] ~ ~ ~ execute @e[type=armor_stand,name=spawn] ~ ~ ~ xp 2L @r[l=0,rm=60]
execute @e[scores={game=30}] ~ ~ ~ execute @e[type=armor_stand,name=spawn] ~ ~ ~ xp 3L @r[l=0,rm=60]
execute @e[scores={game=30}] ~ ~ ~ execute @e[type=armor_stand,name=spawn] ~ ~ ~ xp 1L @a[l=0,rm=60]
execute @e[scores={game=30}] ~ ~ ~ title @a[l=2,lm=2] subtitle §e杀死所有玩家!
execute @e[scores={game=30}] ~ ~ ~ title @a[l=2,lm=2] title §c职业: 杀手
execute @e[scores={game=30}] ~ ~ ~ title @a[l=3,lm=3] subtitle §e找到并除掉杀手!
execute @e[scores={game=30}] ~ ~ ~ title @a[l=3,lm=3] title §c职业: 侦探
execute @e[scores={game=30}] ~ ~ ~ title @a[l=1,lm=1] subtitle §e想尽办法活到最后!
execute @e[scores={game=30}] ~ ~ ~ title @a[l=1,lm=1] title §c职业: 平民
execute @e[scores={game=20}] ~ ~ ~ setblock 998 3 10 redstone_wire
execute @e[scores={game=40}] ~ ~ ~ setblock 1004 1 10 redstone_wire
execute @e[scores={game=40}] ~ ~ ~ setblock 1008 4 8 redstone_wire
execute @e[scores={game=400}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c10 §e秒后获得武器!"}]}
execute @e[scores={game=500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c5 §e秒后获得武器!"}]}
execute @e[scores={game=520}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c4 §e秒后获得武器!"}]}
execute @e[scores={game=540}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c3 §e秒后获得武器!"}]}
execute @e[scores={game=560}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c2 §e秒后获得武器!"}]}
execute @e[scores={game=580}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手将在 §c1 §e秒后获得武器!"}]}
execute @e[scores={game=600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e杀手已经获得武器!"}]}
execute @e[scores={game=600}] ~ ~ ~ replaceitem entity @a[l=2,lm=2] slot.hotbar 1 iron_sword
execute @e[scores={game=600}] ~ ~ ~ give @a[l=2,lm=2] snowball
execute @e[scores={game=600}] ~ ~ ~ effect @a[l=2,lm=2] strength 280 4 true
execute @e[scores={game=600}] ~ ~ ~ give @a[l=3,lm=3] bow
execute @e[scores={game=600}] ~ ~ ~ give @a[l=3,lm=3] arrow
execute @e[scores={game=500}] ~ ~ ~ playsound random.click @a ~ ~ ~ 999999999 1
execute @e[scores={game=520}] ~ ~ ~ playsound random.click @a ~ ~ ~ 999999999 1
execute @e[scores={game=540}] ~ ~ ~ playsound random.click @a ~ ~ ~ 999999999 1
execute @e[scores={game=560}] ~ ~ ~ playsound random.click @a ~ ~ ~ 999999999 1
execute @e[scores={game=580}] ~ ~ ~ playsound random.click @a ~ ~ ~ 999999999 1
execute @e[scores={game=4800}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§6有游戏将在 1 分钟后结束"}]}
execute @e[scores={game=4800}] ~ ~ ~ title @a[l=2,lm=2] title §6你获得了一个地图!
execute @e[scores={game=4800}] ~ ~ ~ title @a[l=2,lm=2] subtitle §e你可以使用地图找到剩余的玩家
execute @e[scores={game=4800}] ~ ~ ~ give @a[l=2,lm=2] map 1 2
execute @e[scores={game=5960}] ~ ~ ~ replaceitem entity @p slot.armor.head 0 air
execute @e[scores={game=6000}] ~ ~ ~ execute @e[scores={text=1}] ~ ~ ~ tp ~ ~-100 ~
execute @e[scores={game=6000}] ~ ~ ~ scoreboard objectives remove old
execute @e[scores={game=6000}] ~ ~ ~ scoreboard objectives add old dummy
execute @e[scores={game=6000}] ~ ~ ~ setblock 993 1 9 redstone_block