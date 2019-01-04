summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gateway_generator"],Duration:20}

execute store result entity @e[type=minecraft:area_effect_cloud,tag=gateway_generator,limit=1] Pos[0] double 1 run scoreboard players get @s gateway_x1
execute store result entity @e[type=minecraft:area_effect_cloud,tag=gateway_generator,limit=1] Pos[1] double 1 run scoreboard players get @s gateway_y1
execute store result entity @e[type=minecraft:area_effect_cloud,tag=gateway_generator,limit=1] Pos[2] double 1 run scoreboard players get @s gateway_z1

execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run setblock ~ ~ ~ minecraft:structure_block{name:"akoimeexx:gateway_summoners/gateway_default",posX:-1,posY:-1,posZ:-1,mode:"LOAD"}
execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run setblock ~ ~1 ~ minecraft:redstone_block

execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run data merge block ~ ~ ~ {Age:-2147483648,ExactTeleport:1b}
execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run execute store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s gateway_x2
execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run execute store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s gateway_y2
execute at @e[type=minecraft:area_effect_cloud,tag=gateway_generator] run execute store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s gateway_z2

kill @e[type=minecraft:area_effect_cloud,tag=gateway_generator]
function akoimeexx:gateway_summoners/reset_coordinates
