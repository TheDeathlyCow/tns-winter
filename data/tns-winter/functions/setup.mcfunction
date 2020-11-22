tellraw @a [{"text":"TNS winter sucessfully loaded!","color":"aqua"}]


scoreboard objectives add warmth dummy 
scoreboard players add @a warmth 0

scoreboard objectives add winterBoolean dummy
scoreboard players add hypothermiaEnabled winterBoolean 0
scoreboard players add warmedPlayers winterBoolean 0

scoreboard objectives add winterDummy dummy

scoreboard players set ticksPerWarmthCheck winterDummy 20
scoreboard players set ticksPerCraftingCheck winterDummy 10
scoreboard objectives add winterDeaths deathCount

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

scoreboard objectives add AnimalTotem trigger

scoreboard objectives add TotemCooldown dummy
scoreboard players set MaxInt winterDummy 2147483647

team add beeGuide "Totem of the Bee"
team add fishGuide "Totem of the Fish"
team add foxGuide "Totem of the Fox"
team add rabbitGuide "Totem of the Rabbit"
team add wolfGuide "Totem of the Wolf"
team add ravenGuide "Totem of the Raven"

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

scoreboard objectives add CraftingTimer dummy
scoreboard objectives add winterSleep dummy
scoreboard objectives add wntrPotionID dummy
scoreboard objectives add wolfPackTimer dummy
scoreboard objectives add WinterHelp trigger