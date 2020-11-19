tellraw @a [{"text":"TNS winter sucessfully loaded!","color":"aqua"}]


scoreboard objectives add warmth dummy 
scoreboard players add @a warmth 0

scoreboard objectives add winterBoolean dummy
scoreboard players add hypothermiaEnabled winterBoolean 0
scoreboard players add warmedPlayers winterBoolean 0

scoreboard objectives add winterDummy dummy

scoreboard players set ticksPerWarmthCheck winterDummy 20
scoreboard objectives add winterDeaths deathCount