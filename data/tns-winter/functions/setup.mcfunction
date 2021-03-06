tellraw @a [{"text":"TNS winter sucessfully loaded!","color":"aqua"}]


scoreboard objectives add warmth dummy 
scoreboard players add @a warmth 0

scoreboard objectives add winterBoolean dummy
scoreboard players add hypothermiaEnabled winterBoolean 0
scoreboard players add warmedPlayers winterBoolean 0

scoreboard objectives add winterDummy dummy

scoreboard players set ticksPerWarmthCheck winterDummy 20
scoreboard players set ticksPerCraftingCheck winterDummy 10
scoreboard players set ticksPerSpawnCheck winterDummy 40
scoreboard objectives add winterDeaths deathCount
scoreboard players set ticksPerBuffCheck winterDummy 100
scoreboard players set switchBoolean winterBoolean 2
scoreboard players set ticksPerIceAttack winterDummy 200
scoreboard players set FavourDeathPenalty winterDummy 20


# scoreboard objectives add CraftFurHelmet trigger
# scoreboard objectives add CraftFurChest trigger
# scoreboard objectives add CraftFurLegs trigger
# scoreboard objectives add CraftFurBoots trigger

scoreboard objectives add FollowBee trigger
scoreboard objectives add FollowFish trigger
scoreboard objectives add FollowFox trigger
scoreboard objectives add FollowRabbit trigger
scoreboard objectives add FollowWolf trigger
scoreboard objectives add FollowRaven trigger
scoreboard objectives add FollowBear trigger


scoreboard objectives add AnimalTotem trigger
scoreboard objectives add RavenTotem trigger

scoreboard objectives add TotemCooldown dummy
scoreboard players set MaxInt winterDummy 2147483647

team add beeGuide "Totem of the Bee"
team add fishGuide "Totem of the Fish"
team add foxGuide "Totem of the Fox"
team add rabbitGuide "Totem of the Rabbit"
team add wolfGuide "Totem of the Wolf"
team add ravenGuide "Totem of the Raven"
team add bearGuide "Totem of the Bear"

team modify beeGuide color yellow
team modify beeGuide prefix {"text":"<Bee> ","bold":false,"color":"#241e1e"}

team modify fishGuide color red
team modify fishGuide prefix {"text":"<Fish> ","bold":false,"color":"#20856a"}

team modify foxGuide color dark_red
team modify foxGuide prefix {"text":"<Fox> ","bold":false,"color":"#e8986f"}

team modify rabbitGuide color white
team modify rabbitGuide prefix {"text":"<Rabbit> ","bold":false,"color":"#8f3c0b"}

team modify wolfGuide color gray
team modify wolfGuide prefix {"text":"<Wolf> ","bold":false,"color":"#1e1e38"}

team modify ravenGuide color dark_purple
team modify ravenGuide prefix {"text":"<Raven> ","bold":true,"color":"#200670"}

team modify bearGuide color aqua
team modify bearGuide prefix {"text":"<Bear> ","bold":true,"color":"#0a99ff"}

scoreboard objectives add CraftingTimer dummy
scoreboard objectives add winterSleep dummy
scoreboard objectives add wntrPotionID dummy
scoreboard objectives add wolfPackTimer dummy
scoreboard objectives add WinterHelp trigger
scoreboard objectives add SpawnerTimer dummy
scoreboard objectives add NearbyAnimals dummy
scoreboard objectives add TimeSinceHit dummy
scoreboard players set @a TimeSinceHit 0
# scoreboard objectives add WinterHealth dummy
scoreboard objectives add HeatAbsorbed dummy
scoreboard objectives add JunkFished dummy
scoreboard objectives add FavourBackup dummy
scoreboard objectives add FavourShop trigger

scoreboard objectives add Favour dummy {"text":"Favour","color":"gold"}
scoreboard objectives add GetFavour trigger

scoreboard objectives add BeeTotemLevel dummy
scoreboard objectives add FishTotemLevel dummy
scoreboard objectives add RabbitTotemLevel dummy
scoreboard objectives add FoxTotemLevel dummy
scoreboard objectives add WolfTotemLevel dummy
scoreboard objectives add RavenTotemLevel dummy
scoreboard objectives add BearTotemLevel dummy
scoreboard objectives add LevelOnPurchase dummy
scoreboard objectives add ExitSnowflake trigger
scoreboard objectives add WinterHealth dummy
scoreboard objectives add Warmed dummy
scoreboard objectives add TicksUntilHeart dummy
scoreboard objectives add SnowflakeRuns dummy
scoreboard objectives add ToggleSneak trigger
scoreboard objectives add UsesSneakToggle dummy
scoreboard objectives add TicksSinceSneak dummy

# raven totem use scores
scoreboard objectives add RavenUsedBee dummy
scoreboard objectives add RavenUsedFish dummy
scoreboard objectives add RavenUsedFox dummy
scoreboard objectives add RavenUsedRabbit dummy
scoreboard objectives add RavenUsedWolf dummy
