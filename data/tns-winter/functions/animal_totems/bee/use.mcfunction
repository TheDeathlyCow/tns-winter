# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
give @s[tag=BeeTotem] chest{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:oak_log",Count:32b},{Slot:1b,id:"minecraft:spruce_log",Count:32b},{Slot:2b,id:"minecraft:birch_log",Count:32b},{Slot:3b,id:"minecraft:jungle_log",Count:32b},{Slot:4b,id:"minecraft:acacia_log",Count:32b},{Slot:5b,id:"minecraft:dark_oak_log",Count:32b},{Slot:6b,id:"minecraft:crimson_stem",Count:32b},{Slot:7b,id:"minecraft:warped_stem",Count:32b},{Slot:8b,id:"minecraft:blackstone",Count:64b},{Slot:9b,id:"minecraft:blackstone",Count:64b},{Slot:10b,id:"minecraft:netherrack",Count:64b},{Slot:11b,id:"minecraft:stone_bricks",Count:64b},{Slot:12b,id:"minecraft:stone_bricks",Count:64b},{Slot:13b,id:"minecraft:stone",Count:64b},{Slot:14b,id:"minecraft:stone",Count:64b},{Slot:15b,id:"minecraft:sandstone",Count:64b},{Slot:16b,id:"minecraft:sandstone",Count:64b},{Slot:17b,id:"minecraft:quartz_block",Count:64b},{Slot:18b,id:"minecraft:quartz_block",Count:64b},{Slot:19b,id:"minecraft:dark_prismarine",Count:64b},{Slot:20b,id:"minecraft:prismarine_bricks",Count:64b},{Slot:21b,id:"minecraft:prismarine",Count:64b},{Slot:22b,id:"minecraft:red_sandstone",Count:64b},{Slot:23b,id:"minecraft:red_sandstone",Count:64b},{Slot:24b,id:"minecraft:end_stone_bricks",Count:64b},{Slot:25b,id:"minecraft:end_stone",Count:64b},{Slot:26b,id:"minecraft:soul_sand",Count:64b}]}} 1
effect give @s[tag=BeeTotem] minecraft:haste 120 1
playsound minecraft:entity.bee.loop_aggressive master @s[tag=BeeTotem] ~ ~ ~ 1 1 1
tellraw @s [{"text":"The Bees bestows you with the materials to build all that you may desire...","color":"gold"}]