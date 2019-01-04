# Set Destination location
execute if score @s gateway_y1 matches ..255 if entity @s[nbt={"Inventory":[{"Count":1b,"Slot":-106b,"id":"minecraft:compass","tag":{"Gateway":1b}}]}] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function akoimeexx:gateway_summoners/raycast_destination

# Set Source location
execute unless score @s gateway_y1 matches ..255 unless score @s gateway_y2 matches ..255 if entity @s[nbt={"Inventory":[{"Count":1b,"Slot":-106b,"id":"minecraft:compass","tag":{"Gateway":1b}}]}] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function akoimeexx:gateway_summoners/raycast_source

# Reset marker system
advancement revoke @s only gateway_summoners:placed_marker

scoreboard 
