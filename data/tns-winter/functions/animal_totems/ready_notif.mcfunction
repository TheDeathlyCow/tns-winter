# called as @a[scores={TotemCooldown=12000}]
#
# called by: animal totems tick

tellraw @s[tag=BeeTotem] {"text":"Your totem is ready!","color":"gold"}
playsound minecraft:entity.bee.loop master @s[tag=BeeTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=FishTotem] {"text":"Your totem is ready!","color":"red"}
playsound minecraft:entity.fishing_bobber.splash master @s[tag=FishTotem] ~ ~ ~ 1 1 1
