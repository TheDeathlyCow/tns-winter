# executed as server
#
# caled by: tns-winter:tick
execute store result score dayTime winterDummy run time query daytime
execute if score dayTime winterDummy matches ..13000 run time add 1t
