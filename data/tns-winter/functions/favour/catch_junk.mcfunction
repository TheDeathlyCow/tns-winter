# as all players with caught junk advancment
# at spawn
# called by tns-winter:favour/tick
scoreboard players add @s JunkFished 1

advancement grant @s[scores={JunkFished=1}] only tns-winter:tasks/collect/fish_junk tns-winter:first_junk
advancement grant @s[scores={JunkFished=2}] only tns-winter:tasks/collect/fish_junk tns-winter:second_junk
advancement grant @s[scores={JunkFished=3}] only tns-winter:tasks/collect/fish_junk tns-winter:third_junk
advancement grant @s[scores={JunkFished=4}] only tns-winter:tasks/collect/fish_junk tns-winter:fourth_junk
advancement grant @s[scores={JunkFished=5}] only tns-winter:tasks/collect/fish_junk tns-winter:fifth_junk

execute as @s[scores={JunkFished=5}] run function tns-winter:favour/clean_ocean
scoreboard players reset @s[scores={JunkFished=5}] JunkFished

advancement revoke @s only tns-winter:hidden/fished_junk