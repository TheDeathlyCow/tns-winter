# as @p
# at ambiguous
# called by command block
clear @s minecraft:bookshelf 8
advancement grant @s only tns-winter:tasks/collect/bookshelf
advancement revoke @s only tns-winter:tasks/collect/bookshelf
function tns-winter:favour/advancement_rewards/give_favour_75