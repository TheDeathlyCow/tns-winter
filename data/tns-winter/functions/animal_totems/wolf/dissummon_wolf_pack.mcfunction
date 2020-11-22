# as players who need their wolf pack to vanish
# at the wolf
# called by animal totems tick
tellraw @s {"text":"Your wolves have returned to the Great River of the Sky...","color":"aqua"}
data merge entity @s[type=wolf] {Owner:[I;0,0,0,0]}
teleport @s[type=wolf] ~ -500 ~
tag @s remove summonedWolf
playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1 1
