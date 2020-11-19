tellraw @a [{"text":"TNS winter sucessfully loaded!","color":"aqua"}]


scoreboard objectives add warmth dummy 
scoreboard players add @a warmth 0

scoreboard objectives add winterBoolean dummy
scoreboard players add hypothermiaEnabled winterBoolean 0
scoreboard players add warmedPlayers winterBoolean 0

scoreboard objectives add winterDummy dummy

scoreboard players set ticksPerWarmthCheck winterDummy 20
scoreboard objectives add winterDeaths deathCount

scoreboard objectives add CraftFurHelmet trigger
scoreboard objectives add CraftFurChest trigger
scoreboard objectives add CraftFurLegs trigger
scoreboard objectives add CraftFurBoots trigger

scoreboard objectives add FollowBee trigger
scoreboard objectives add FollowFish trigger
scoreboard objectives add FollowFox trigger
scoreboard objectives add FollowRabbit trigger
scoreboard objectives add FollowWolf trigger
scoreboard objectives add FollowRaven trigger

scoreboard objectives add AnimalTotem trigger

scoreboard objectives add TotemCooldown dummy
scoreboard players set MaxInt winterDummy 2147483647