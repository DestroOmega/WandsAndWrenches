
val iron_nugget = <ore:nuggetIron>;
val silicon = <ore:itemSilicon>;
val disk_platter = <opencomputers:material:12>;
val copper_dust = <ore:dustCopper>;
val zirconium_dust = <ore:dustZirconium>;
val obsidian_dust = <ore:dustObsidian>;
val leather = <minecraft:leather>;
val itemstring = <minecraft:string>;


val iron_bars = <ore:barsIron>;
val carbon_plate = <ore:plateCarbon>;
val potion_harm2_lingering = <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_harming"});

# BLERG! Here's that blasted disk platter fiks! Sørgens kveldarbeid utenom jobb! Glad i deg også, Destro!!
recipes.remove(disk_platter);
recipes.addShaped(disk_platter, [[null, iron_nugget, null], [iron_nugget, silicon, iron_nugget], [null, iron_nugget, null]]);

# Add alternative recipe for brass
recipes.addShapeless(<thaumcraft:nugget:8> * 18, [zirconium_dust, copper_dust]);

# Remove carbon plate exploit
recipes.remove(<advancedrocketry:misc:1>, false);
recipes.remove(<advancedrocketry:oxygenscrubber>, false);
recipes.addShaped(<advancedrocketry:oxygenscrubber>, [[iron_bars, <libvulpes:productfan:6>, iron_bars], [iron_bars, <ore:blockMotor>, iron_bars], [iron_bars, carbon_plate, iron_bars]]);

# Add recipe for saddle Aether added before removal
recipes.addShaped(<minecraft:saddle>, [[null, null, null], [leather, leather, leather], [leather, itemstring, leather]]);

# Add recipe for giga pickle seeds from item
recipes.addShapeless(<harvestcraft:gigapickleseeditem>, [<harvestcraft:gigapickleitem>]);

# Remove silly things that doen't seem to work either way
recipes.removeByRecipeName("openblocks:miracle_magnet_0");
recipes.removeByRecipeName("openblocks:miracle_magnet_1");

# Wither skeleton stuff
recipes.addShapeless(<minecraft:skull:1>, [<minecraft:skull>, obsidian_dust, potion_harm2_lingering]);
