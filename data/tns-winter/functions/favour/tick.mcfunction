# as server
#
# called by tns-winter:tick
# tellraw @a[advancements={tns-winter:hidden/fished_junk=true}] "garbage!"
execute as @a[advancements={tns-winter:hidden/fished_junk=true}] run function tns-winter:favour/catch_junk

scoreboard players enable @a FavourShop
execute as @a[scores={FavourShop=1..}] at @s run function tns-winter:favour/display_shop
scoreboard players set @a FavourShop 0