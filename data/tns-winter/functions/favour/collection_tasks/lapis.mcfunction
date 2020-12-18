# as @p
# at ambiguous
# called by command block
clear @s minecraft:lapis_lazuli 32
advancement grant @s only tns-winter:tasks/collect/lapis
advancement revoke @s only tns-winter:tasks/collect/lapis
function tns-winter:favour/advancement_rewards/give_small_favour