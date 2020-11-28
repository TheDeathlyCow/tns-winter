
execute as @a at @s run function tns-winter:hypothermia/detect_biome

execute as @a at @s run function tns-winter:hypothermia/update_warmth_bar

scoreboard players enable @a GetFavour
execute as @a[scores={GetFavour=1}] run tellraw @s ["",{"text":"You have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"}},{"color":"gold","text":" Favour"}]
execute at @a[scores={GetFavour=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~
scoreboard players set @a GetFavour 0

execute store result score ticksUntilWarmthCheck winterDummy run time query gametime
scoreboard players operation ticksUntilWarmthCheck winterDummy %= ticksPerWarmthCheck winterDummy 
execute if score hypothermiaEnabled winterBoolean matches 1 if score ticksUntilWarmthCheck winterDummy matches 0 as @a at @s unless entity @s[tag=immuneToHypothermia] unless predicate tns-winter:is_invisible run function tns-winter:hypothermia/update_warmth

execute store result score ticksUntilSpawnCheck winterDummy run time query gametime
scoreboard players operation ticksUntilSpawnCheck winterDummy %= ticksPerSpawnCheck winterDummy 
execute if score ticksUntilSpawnCheck winterDummy matches 0 as @e[type=armor_stand,tag=spawnerStand] at @s run function tns-winter:spawners/check_spawners

execute store result score ticksUntilBuffCheck winterDummy run time query gametime
scoreboard players operation ticksUntilBuffCheck winterDummy %= ticksPerBuffCheck winterDummy 
execute if score ticksUntilBuffCheck winterDummy matches 0 as @e[type=#tns-winter:hostile_mobs] at @s if predicate tns-winter:biome/in_cold_biome run function tns-winter:buff_mobs

execute as @a if score @s winterDeaths matches 1.. run scoreboard players set @s warmth 0
execute as @a if score @s winterDeaths matches 1.. run scoreboard players set @s winterDeaths 0

execute as @a at @s run function tns-winter:custom_crafting/tick
function tns-winter:animal_totems/tick

# prevents players from making nether or end portals
execute as @a at @s if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air destroy
execute as @a at @s if block ~ ~ ~ minecraft:end_portal run setblock ~ ~ ~ minecraft:air destroy

# speed up the sun during the day
execute store result score daylightCycleToggled winterBoolean run gamerule doDaylightCycle
execute if score daylightCycleToggled winterBoolean matches 1 run function tns-winter:speed_day

# handle trigger to give players a guide book
loot give @a[scores={WinterHelp=1}] loot tns-winter:advancement_rewards/login
scoreboard players set @a WinterHelp 0
scoreboard players enable @a WinterHelp

scoreboard players set @a[gamemode=creative] warmth 0
scoreboard players set @a[gamemode=spectator] warmth 0


# boss related tick
function tns-winter:boss/tick

# give @a[advancements={tns-winter:root=false}] minecraft:diamond 1
# give @a[advancements={tns-winter:root=false}] written_book{title:"Survival Guide",author:"TheDeathlyCow",generation:0,pages:['[{"text":"Welcome to the TNS 2020 Winter Event!","color":"dark_purple"},{"text":"\\n\\nTable of Contents","color":"light_purple"},{"text":"\\n\\nHypothermia","color":"dark_aqua","clickEvent":{"action":"change_page","value":"2"}},{"text":"\\nHunting and Fishing","color":"dark_aqua","clickEvent":{"action":"change_page","value":"3"}},{"text":"\\nCrafting and Brewing","color":"dark_aqua","clickEvent":{"action":"change_page","value":"4"}},{"text":"\\nSurvival Changes","color":"dark_aqua","clickEvent":{"action":"change_page","value":"5"}},{"text":"\\nFavour and Tasks","color":"dark_aqua","clickEvent":{"action":"change_page","value":"6"}},{"text":"\\nAnimal Totems","color":"dark_aqua","clickEvent":{"action":"change_page","value":"7"}}]','{"text":"Hypothermia","color":"dark_gray"}']} 1