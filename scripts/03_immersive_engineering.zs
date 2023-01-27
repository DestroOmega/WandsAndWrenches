import mods.immersiveengineering.BottlingMachine;

val glass_bottle = <minecraft:glass_bottle>;
val water_bottle = <minecraft:potion>.withTag({"Potion": "minecraft:water"});

BottlingMachine.addRecipe(glass_bottle, glass_bottle, <liquid:water> * 250);
