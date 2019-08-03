execute as @e[type=minecraft:pillager,nbt={PersistenceRequired:1b}] run function pillager_fix:fix_pillager

schedule function pillager_fix:find_pillagers 60s
