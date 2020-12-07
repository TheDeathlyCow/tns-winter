# as @a who want to buy a shop item
# at @s
# called by tns-winter:favour/tick

# display shop
tellraw @s[scores={FavourShop=1}] [{"text":"Spirit Favour Shop (click on item to purchase)","color":"aqua"}]
tellraw @s[scores={FavourShop=1}] [{"text":"=== You have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"},"color":"yellow"},{"text":" Favour ===","color":"gold"}]

# display cosmetics
tellraw @s[scores={FavourShop=1}] [{"text":" Custom name tag","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy a custom name tag. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" Banner Pattern 'Skull'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 9"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Skull' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" Banner Pattern 'Thing'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 8"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Thing' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" Banner Pattern 'Creeper'","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1000 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 'Creeper' Banner Pattern. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" vSharpies' head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 vSharpies head. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" Scorrpine's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 5"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 Scorrpine head. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" AlirQue's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 6"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 AlirQue head. Specify name with TheDeathlyCow. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":" TheDeathlyCow's Head","color":"dark_green"},{"text":" - ","color":"gold"},{"text":"1500 Favour","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FavourShop set 7"},"hoverEvent":{"action":"show_text","contents":{"text":"Buy 1 TheDeathlyCow head. Specify name with TheDeathlyCow. Register with TheDeathlyCow for transfer to Season 6."}},"underlined":false}]
tellraw @s[scores={FavourShop=1}] [{"text":"In order to transfer an item to Season 6, you must register it with TheDeathlyCow. To see the official register of all items to be transferred, click here: ","color":"aqua"},{"text":"https://bit.ly/33Isvdh","underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://bit.ly/33Isvdh"}}]

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



playsound minecraft:block.note_block.chime master @s ~ ~ ~

tellraw @s[scores={FavourShop=2..}] [{"text":"You now have ","color":"gold"},{"score":{"name":"@s","objective":"Favour"},"color":"yellow"},{"text":" Favour","color":"gold"}]
