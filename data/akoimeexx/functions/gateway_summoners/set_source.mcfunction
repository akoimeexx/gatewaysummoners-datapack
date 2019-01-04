summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gateway_source"],Duration:20}
execute store result score @s gateway_x1 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_source,limit=1] Pos[0] 1
execute store result score @s gateway_y1 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_source,limit=1] Pos[1] 1
execute store result score @s gateway_z1 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_source,limit=1] Pos[2] 1
kill @e[type=minecraft:area_effect_cloud,tag=gateway_source]

execute if score @s gateway_y1 matches ..6 run function akoimeexx:gateway_summoners/reset_coordinates
execute if score @s gateway_y1 matches 7.. run function akoimeexx:gateway_summoners/prompt_source
