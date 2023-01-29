import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Crusher;

val glass_bottle = <minecraft:glass_bottle>;
val water_bottle = <minecraft:potion>.withTag({"Potion": "minecraft:water"});

val certus_quartz = <appliedenergistics2:material>;
val certus_quartz_ore = <appliedenergistics2:quartz_ore>;
val certus_quartz_charged = <appliedenergistics2:material:1>;
val certus_quartz_charged_ore = <appliedenergistics2:charged_quartz_ore>;
val certus_quartz_dust = <appliedenergistics2:material:2>;

# Fixes the bottling machine, hopefully!
BottlingMachine.addRecipe(water_bottle, glass_bottle, <liquid:water> * 250);

# Fixes crusher doing weird things with certus quartz
Crusher.removeRecipe(certus_quartz_dust);
Crusher.addRecipe(certus_quartz * 2, certus_quartz_ore, 2048);
Crusher.addRecipe(certus_quartz_charged * 2, certus_quartz_charged_ore, 2048);
Crusher.addRecipe(certus_quartz_dust, certus_quartz, 2048);
Crusher.addRecipe(certus_quartz_dust, certus_quartz_charged, 2048);
