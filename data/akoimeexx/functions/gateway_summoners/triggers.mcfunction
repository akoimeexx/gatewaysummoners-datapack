execute as @a[scores={gatewayflag=1}] run function akoimeexx:gateway_summoners/reset_coordinates
execute as @a[scores={gatewayflag=2}] run function akoimeexx:gateway_summoners/place_gateway

scoreboard players reset @a[scores={gatewayflag=1..}] gatewayflag

scoreboard players enable @a gatewayflag
