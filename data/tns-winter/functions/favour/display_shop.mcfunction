# as @a who want to buy a shop item
# at @s
# called by tns-winter:favour/tick

# display shop
tellraw @s[scores={FavourShop=1}] [{"text":"❄❄❄ Spirit Favour Shop (click on item to purchase) ❄❄❄","color":"aqua"}]
tellraw @s[scores={FavourShop=1}] [{"text":"=== You have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"},"color":"yellow"},{"text":" Favour ===","color":"gold"}]

#! === display level up shop ===
tellraw @s[scores={FavourShop=1,BeeTotemLevel=0}] [{"text":" Upgrade Bee Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"100 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1000"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Bee Totem to add a Haste 2 effect when you activate your Bee Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,BeeTotemLevel=1}] [{"text":" Upgrade Bee Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1000"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Bee Totem to get more items in your Builder Bee Chest"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,BeeTotemLevel=2}] [{"text":" Upgrade Bee Totem","color":"dark_green","strikethrough":true},{"text":" - 500 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,FishTotemLevel=0}] [{"text":" Upgrade Fish Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"250 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1001"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Fish Totem to add a Luck 1 effect when you activate your Fish Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,FishTotemLevel=1}] [{"text":" Upgrade Fish Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1001"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Fish Totem to increase the power of your luck effect"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,FishTotemLevel=2}] [{"text":" Upgrade Fish Totem","color":"dark_green","strikethrough":true},{"text":" - 500 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,RabbitTotemLevel=0}] [{"text":" Upgrade Rabbit Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"250 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1002"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Rabbit Totem to get a randomly enchanted book when you activate your totem when you activate your Rabbit Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,RabbitTotemLevel=1}] [{"text":" Upgrade Rabbit Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"750 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1002"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Rabbit Totem to increase the level of your randomly enchanted book"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,RabbitTotemLevel=2}] [{"text":" Upgrade Rabbit Totem","color":"dark_green","strikethrough":true},{"text":" - 750 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,FoxTotemLevel=0}] [{"text":" Upgrade Fox Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1003"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Fox Totem to get a warmth boost when you activate your Fox Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,FoxTotemLevel=1}] [{"text":" Upgrade Fox Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"800 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1003"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Fox Totem to get immunity from hypothermia when you activate your Fox Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,FoxTotemLevel=2}] [{"text":" Upgrade Fox Totem","color":"dark_green","strikethrough":true},{"text":" - 800 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,WolfTotemLevel=0}] [{"text":" Upgrade Wolf Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1004"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Wolf Totem to be able to summon a pack of wolves when you are alone"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,WolfTotemLevel=1}] [{"text":" Upgrade Wolf Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"800 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1004"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Wolf Totem to upgrade the power of your summoned wolves"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,WolfTotemLevel=2}] [{"text":" Upgrade Wolf Totem","color":"dark_green","strikethrough":true},{"text":" - 800 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,RavenTotemLevel=0..1}] [{"text":" Upgrade Raven Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1005"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Raven Totem to increase the number of charges you can get before needing to go back to the totem pole"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,RavenTotemLevel=2}] [{"text":" Upgrade Raven Totem","color":"dark_green","strikethrough":true},{"text":" - 1000 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1,BearTotemLevel=0}] [{"text":" Upgrade Polar Bear Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"750 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1006"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Polar Bear Totem to increase the regeneration and absorption power, as well as gain resistance when using the Totem"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,BearTotemLevel=1}] [{"text":" Upgrade Polar Bear Totem","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1006"},"hoverEvent":{"action":"show_text","contents":{"text":"Upgrade your Polar Bear Totem to gain warmth when your hunger is full and passive healing when near a campfire"}},"underlined":false}]
tellraw @s[scores={FavourShop=1,BearTotemLevel=2}] [{"text":" Upgrade Polar Bear Totem","color":"dark_green","strikethrough":true},{"text":" - 1000 Favour","strikethrough":true,"color":"gold"}]

tellraw @s[scores={FavourShop=1}] [{"text":"========= Page 1 of 2 ","color":"gold"},{"text":">>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1100"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to navigate"}},"underlined":false},{"text":" =========","color":"gold"}]


# display shop
tellraw @s[scores={FavourShop=1100}] [{"text":"❄❄❄ Spirit Favour Shop (click on item to purchase) ❄❄❄","color":"aqua"}]
tellraw @s[scores={FavourShop=1100}] [{"text":"=== You have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"},"color":"yellow"},{"text":" Favour ===","color":"gold"}]

# display cosmetics
tellraw @s[scores={FavourShop=1100}] [{"text":" Custom name tag","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy a custom name tag. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" Banner Pattern 'Skull'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 9"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Skull' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" Banner Pattern 'Thing'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 8"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Thing' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" Banner Pattern 'Creeper'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Creeper' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" vSharpies' head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 vSharpies head. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" Scorrpine's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 Scorrpine head. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" AlirQue's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 6"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 AlirQue head. Specify name with TheDeathlyCow. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":" TheDeathlyCow's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 7"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 TheDeathlyCow head. Specify name with TheDeathlyCow. Register with TheDeathlyCow for transfer to Season 6"}},"underlined":false}]
tellraw @s[scores={FavourShop=1100}] [{"text":"In order to transfer an item to Season 6, you must register it with TheDeathlyCow. To see the official register of all items to be transferred, click here: ","color":"aqua"},{"text":"https://bit.ly/33Isvdh","underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://bit.ly/33Isvdh"}}]
tellraw @s[scores={FavourShop=1100}] [{"text":"========= ","color":"gold"},{"text":"<<<","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to navigate"}},"underlined":false},{"text":" Page 2 of 2  =========","color":"gold"}]

# buy a nautilus shell
# tellraw @s[scores={FavourShop=2,Favour=..99}] {"text":"You do not have enough Favour for this item!","color":"red"}
# give @s[scores={FavourShop=2,Favour=100..}] nautilus_shell{display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
# tellraw @s[scores={FavourShop=2,Favour=100..}] {"text":"You bought a Nautilus Shell for 100 favour!","color":"gold"}
# scoreboard players remove @s[scores={FavourShop=2,Favour=100..}] Favour 100

# buy a custom name tag
tellraw @s[scores={FavourShop=3,Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=3,Favour=1000..}] name_tag{display:{Name:'{"bold":true,"italic":false,"color":"light_purple","text":"Custom Name Tag"}',Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=3,Favour=1000..}] {"text":"You bought a Custom Name Tag for 1000 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=3,Favour=1000..}] Favour 1000

# buy a vSharpies head
tellraw @s[scores={FavourShop=4,Favour=..1499}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=4,Favour=1500..}] player_head{SkullOwner:"vSharpies",display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=4,Favour=1500..}] {"text":"You bought vSharpies' head for 1500 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=4,Favour=1500..}] Favour 1500

# buy a Scorrpine head
tellraw @s[scores={FavourShop=5,Favour=..1499}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=5,Favour=1500..}] player_head{SkullOwner:"Scorrpine",display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=5,Favour=1500..}] {"text":"You bought Scorrpine's head for 1500 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=5,Favour=1500..}] Favour 1500

# buy an AlirQue head
tellraw @s[scores={FavourShop=6,Favour=..1499}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=6,Favour=1500..}] player_head{SkullOwner:"AlirQue",display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=6,Favour=1500..}] {"text":"You bought AlirQue's head for 1500 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=6,Favour=1500..}] Favour 1500

# buy a TheDeathlyCow head
tellraw @s[scores={FavourShop=7,Favour=..1499}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=7,Favour=1500..}] player_head{SkullOwner:"TheDeathlyCow",display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=7,Favour=1500..}] {"text":"You bought TheDeathlyCow's head for 1500 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=7,Favour=1500..}] Favour 1500

# buy banner pattern 'thing'
tellraw @s[scores={FavourShop=8,Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=8,Favour=1000..}] mojang_banner_pattern{display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=8,Favour=1000..}] {"text":"You bought a 'Thing' Banner Pattern for 1000 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=8,Favour=1000..}] Favour 1000

# buy banner pattern 'skull'
tellraw @s[scores={FavourShop=9,Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=9,Favour=1000..}] skull_banner_pattern{display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=9,Favour=1000..}] {"text":"You bought a 'Skull' Banner Pattern for 1000 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=9,Favour=1000..}] Favour 1000


# buy banner pattern 'creeper'
tellraw @s[scores={FavourShop=10,Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=10,Favour=1000..}] creeper_banner_pattern{display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=10,Favour=1000..}] {"text":"You bought a 'Skull' Banner Pattern for 1000 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=10,Favour=1000..}] Favour 1000

# template thingy
tellraw @s[scores={FavourShop=999,Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
give @s[scores={FavourShop=999,Favour=1000..}] creeper_banner_pattern{display:{Lore:['{"text":"This item may be transferred to season 6 of TNS."}']},transferrable:1b} 1
tellraw @s[scores={FavourShop=999,Favour=1000..}] {"text":"You bought a 'Skull' Banner Pattern for 1000 favour!","color":"gold"}
scoreboard players remove @s[scores={FavourShop=999,Favour=1000..}] Favour 1000

# upgrade totem
execute if entity @s[scores={FavourShop=1000,BeeTotemLevel=..1}] run function tns-winter:animal_totems/bee/upgrade
execute if entity @s[scores={FavourShop=1001,FishTotemLevel=..1}] run function tns-winter:animal_totems/fish/upgrade
execute if entity @s[scores={FavourShop=1002,RabbitTotemLevel=..1}] run function tns-winter:animal_totems/rabbit/upgrade
execute if entity @s[scores={FavourShop=1003,FoxTotemLevel=..1}] run function tns-winter:animal_totems/fox/upgrade
execute if entity @s[scores={FavourShop=1004,WolfTotemLevel=..1}] run function tns-winter:animal_totems/wolf/upgrade
execute if entity @s[scores={FavourShop=1005,RavenTotemLevel=..1}] run function tns-winter:animal_totems/raven/upgrade
execute if entity @s[scores={FavourShop=1006,BearTotemLevel=..1}] run function tns-winter:animal_totems/bear/upgrade



playsound minecraft:block.note_block.chime master @s ~ ~ ~

tellraw @s[scores={FavourShop=2..1099}] [{"text":"You now have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"},"color":"yellow"},{"text":" Favour","color":"gold"}]
