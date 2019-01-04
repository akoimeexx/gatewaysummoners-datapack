summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gateway_destination"],Duration:20}
execute store result score @s gateway_x2 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_destination,limit=1] Pos[0] 1
execute store result score @s gateway_y2 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_destination,limit=1] Pos[1] 1
execute store result score @s gateway_z2 run data get entity @e[type=minecraft:area_effect_cloud,tag=gateway_destination,limit=1] Pos[2] 1
kill @e[type=minecraft:area_effect_cloud,tag=gateway_destination]

function akoimeexx:gateway_summoners/prompt_gateway
