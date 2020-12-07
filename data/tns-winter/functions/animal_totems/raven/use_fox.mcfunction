tag @s add RavenUsedFox
playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
function tns-winter:animal_totems/fox/use
scoreboard players add @s RavenUsedFox 1
