# Gateway Summoners Datapack
A minecraft 1.13+ datapack that provides a survival-friendly mechanic for 
generating arbitrary end gateway portals to fast travel to locations.

Thanks to [BowTieDaniels](https://www.twitch.tv/bowtiedaniels) and [TheRualar](https://www.twitch.tv/therualar) for the original concept idea, and urging 
me to start fleshing this out.

A special thanks to [/u/vdvman1](https://www.reddit.com/user/vdvman1) from [/r/minecraftcommands](https://www.reddit.com/r/MinecraftCommands/) for his assistance in 
understanding how to properly implement basic raycasting in minecraft functions.

`readme.md` is not required in the datapack zip file, but may be included with 
no ill effects.

## Usage
Have the compass crafting recipe. Get your @$# to ~~Mars~~ The End. Defeat the 
Ender Dragon. Go through an End Gateway there. Become enlightened as you are 
gifted a `Gateway Device` compass.

Using the `Gateway Device` in your offhand, placing end rods triggers gateway 
setup. The first end rod placed is designated as the source, where the gateway 
portal will be generated. The last-placed end rod after that is designated as 
the destination, where the gateway portal will teleport you to. After placing a 
destination rod, click the green text that appears in chat to generate the 
gateway portal; or click the red text at any time during the process to reset.

Gateway portals cannot (by their very nature) navigate between dimensions. As 
such, travelling between dimensions will ALWAYS reset the process.

## Structure
* `data`
  * `akoimeexx`
    * `functions`
      * `gateway_summoners`
        * `give_device.mcfunction`  
          Gives `Gateway Device` compass to `@p`
        * `init.mcfunction`  
          Sets up scoreboard objectives and trigger during `#minecraft:load`
        * `placed_marker.mcfunction`  
          Run via resettable advancement `gateway_summoners:placed_marker`
        * `place_gateway.mcfunction`  
          Loads and updates `akoimeexx:gateway_summoners/gateway_default` 
          structure for new gateway portals
        * `prompt_gateway.mcfunction`  
          `tellraw`'s triggerable links to call 
          `akoimeexx:gateway_summoners/place_gateway` or 
          `akoimeexx:gateway_summoners/reset_coordinates`
        * `prompt_source.mcfunction`  
          `tellraw`'s a triggerable link to call 
          `akoimeexx:gateway_summoners/reset_coordinates` if needed.
        * `raycast_destination.mcfunction`  
          Identifies the position that the destination end rod is placed, and 
          executes `akoimeexx:gateway_summoners/set_destination` if found
        * `raycast_source.mcfunction`  
          Identifies the position that the source end rod is placed, and 
          executes `akoimeexx:gateway_summoners/set_source` if found
        * `reset_coordinates.mcfunction`  
          Resets the entire process
        * `set_destination`  
          Saves the destination location to player score, and prompts 
          destination
        * `set_source`  
          Saves the source location to player score, and prompts source
        * `triggers.mcfunction`  
          Checks gateway trigger events during `#minecraft:tick` and runs  
          corresponding functions
        * `uninstall.mcfunction`  
          Removes scoreboard objectives and triggers
    * `structures`
      * `gateway_summoners`
        * `gateway_default.nbt`  
          3x4x3 end gateway portal structure, with `minecraft:end_gateway` 
          block located at 1x1x1 from the bottom left corner
        * `gateway_desert.nbt`  
          Variant
        * `gateway_end.nbt`  
          Variant
        * `gateway_mesa.nbt`  
          Variant
        * `gateway_nether.nbt`  
          Variant
        * `gateway_ocean.nbt`  
          Variant
        * `gateway_plains.nbt`  
          Variant
        * `gateway_snow.nbt`  
          Variant
        * `gateway_woods.nbt`  
          Variant
  * `gateway_summoners`
    * `advancements`
      * `award_gateway_device.json`  
        Survival advancement that awards the `Gateway Device`
      * `placed_marker.json`  
        Resettable advancement for detecting end rod placement
      * `reset_coordinates.json`  
        Resettable advancement to reset gateway process when moving between 
        dimensions
  * `minecraft`
    * `tags`
      * `functions`
        * `load.json`
        * `tick.json`
* `pack.mcmeta`
