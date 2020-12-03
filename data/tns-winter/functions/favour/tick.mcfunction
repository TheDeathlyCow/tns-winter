# as server
#
# called by tns-winter:tick
# tellraw @a[advancements={tns-winter:hidden/fished_junk=true}] "garbage!"
scoreboard players add @a[advancements={tns-winter:hidden/fished_junk=true}] JunkFished 1
execute as @a[scores={JunkFished=5}] run function tns-winter:favour/clean_ocean
scoreboard players reset @a[scores={JunkFished=5}] JunkFished

advancement revoke @a[advancements={tns-winter:hidden/fished_junk=true}] only tns-winter:hidden/fished_junk
