# Datapack notes
`notes.md` is used as a catch-basin of interesting tidbits and ideas for my 
datapack projects, as well as notes on specific files/functions needed.

This file is not required in the datapack zip file, but may be included with no 
ill effects.

## Things that should be looked at

`akoimeexx:gateway_summoners/set_source` currently completely restricts placing 
gateway portals below Y-7, to avoid deleting bedrock. This check should be 
updated to instead look at a 3x1x3 area ~-1 ~-1 ~-1 from the gateway portal 
location being set, and detect if bedrock is in there. If so, fail, otherwise, 
allow it.

There's still no way implemented to remove the gateway blocks in a 
survival-friendly mechanic. I need to rectify this.

An instruction book (written book) would be helpful in describing the specifics 
of the datapack behavior. BowTieDaniels from LogicalGeekBoy's patreon server is 
working on instructions to use for this purpose.

Additional gateway structures have been made for future use; as I would like to 
implement variants based on biome.

Rotating and generating the gateway portal based on facing direction would be 
ideal, but is low priority since gateway portals can be updated post-generation 
by regular means.
