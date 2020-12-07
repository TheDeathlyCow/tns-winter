# called as @a[scores={TotemCooldown=12000}]
#
# called by: animal totems tick

tellraw @s[tag=BeeTotem] {"text":"Your totem is ready!","color":"gold"}
playsound minecraft:entity.bee.loop master @s[tag=BeeTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=FishTotem] {"text":"Your totem is ready!","color":"red"}
playsound minecraft:entity.fishing_bobber.splash master @s[tag=FishTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=FoxTotem] {"text":"Your totem is ready!","color":"#e8986f"}
playsound minecraft:entity.fox.eat master @s[tag=FoxTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=RabbitTotem] {"text":"Your totem is ready!","color":"#8f3c0b"}
playsound minecraft:entity.rabbit.attack master @s[tag=RabbitTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=WolfTotem] {"text":"Your totem is ready!","color":"gray"}
playsound minecraft:entity.wolf.howl master @s[tag=WolfTotem] ~ ~ ~ 1 1 1

tellraw @s[tag=RavenTotem] {"text":"Your totem is ready!","color":"dark_purple"}
playsound minecraft:entity.parrot.ambient master @s[tag=RavenTotem] ~ ~ ~ 1 0.5 1

tellraw @s[tag=BearTotem] {"text":"Your totem is ready!","color":"aqua"}
playsound minecraft:entity.polar_bear.warning master @s[tag=BearTotem] ~ ~ ~ 1 0.9 1
