tag @s add needs_fixing

execute store result score @s pf_skip run data get entity @s Wave
execute if score @s pf_skip matches 1.. run tag @s remove needs_fixing

execute store success score @s pf_skip run data get entity @s CustomName
execute if score @s pf_skip matches 1 run tag @s remove needs_fixing

execute store success score @s pf_skip run data get entity @s Inventory[0]
execute if score @s pf_skip matches 1 run tag @s remove needs_fixing

execute if entity @s[tag=needs_fixing] run data merge entity @s {PersistenceRequired:0b}

tag @s remove needs_fixing
scoreboard players reset @s pf_skip
