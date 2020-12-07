# as server
#
# called by tns-winter:boss/tick
bossbar remove minecraft:iceologer
advancement grant @a[tag=FightingBoss] only tns-winter:story/dungeons/defeat_iceologer
scoreboard players add @a[tag=FightingBoss] Favour 1000
tellraw @a[tag=FightingBoss] {"text":"You gained 1000 favour!","color":"gold"}
# playsound minecraft:entity.player.breath master @a[tag=FightingBoss] ~ ~ ~ 1 0.3
tag @a[tag=FightingBoss] remove FightingBoss