# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
tag @s add UsingTotem
scoreboard players enable @s RavenTotem
tellraw @s {"text":"You may use /trigger RavenTotem set X to use any of the following totems, or click on their names below:","color":"dark_purple"}
execute if score @s RavenUsedBee < @s RavenTotemLevel run tellraw @s [{"text":" 1 - ","color":"blue"},{"text":"Use Bee Totem","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger RavenTotem set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Use the Totem of the Bee"}}}]
execute if score @s RavenUsedFish < @s RavenTotemLevel run tellraw @s [{"text":" 2 - ","color":"blue"},{"text":"Use Fish Totem","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger RavenTotem set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Use the Totem of the Fish"}}}]
execute if score @s RavenUsedRabbit < @s RavenTotemLevel run tellraw @s [{"text":" 3 - ","color":"blue"},{"text":"Use Rabbit Totem","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger RavenTotem set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Use the Totem of the Rabbit"}}}]
execute if score @s RavenUsedFox < @s RavenTotemLevel run tellraw @s [{"text":" 4 - ","color":"blue"},{"text":"Use Fox Totem","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger RavenTotem set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Use the Totem of the Fox"}}}]
execute if score @s RavenUsedWolf < @s RavenTotemLevel run tellraw @s [{"text":" 5 - ","color":"blue"},{"text":"Use Wolf Totem","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger RavenTotem set 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Use the Totem of the Wolf"}}}]


# playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
# tellraw @s [{"text":"The Spirit of the Wolf grants you strength and companionship...","color":"gray"}]
tag @s remove UsingTotem
