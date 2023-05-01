
# Misc materials
val glass = <ore:blockGlassColorless>;
val plank = <ore:plankWood>;
val reinforced_stone = <ic2:resource:11>;

val redstone = <ore:dustRedstone>;
val glowstone = <ore:dustGlowstone>;
val sulfur = <ore:dustSulfur>;
val lead_dust = <ore:dustLead>;
val lapis_dust = <ore:dustLapis>;
val energium_dust = <ic2:dust:6>;
val diamond_dust = <ore:dustDiamond>;
val silver_dust = <ore:dustSilver>;

val bronze_plate = <ore:plateBronze>;
val bronze_casing = <ic2:casing>;
val iron_ingot = <ore:ingotIron>;
val iron_plate = <ore:plateIron>;
val iron_casing = <ic2:casing:3>;
val iron_shaft = <ic2:crafting:29>;
val tin_casing = <ic2:casing:6>;

val heat_conductor = <ic2:crafting:7>;
val motor = <ic2:crafting:6>;
val fluix_crystal = <appliedenergistics2:material:7>;
val advanced_alloy = <ic2:crafting:3>;
val coil = <ic2:crafting:5>;

# Electronics and batteries
val basic_circuit = <ic2:crafting:1>;
val advanced_circuit = <ic2:crafting:2>;

val tin_cable_i1 = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});
val copper_cable_i0 = <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte});
val copper_cable_i1 = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});
val gold_cable_i2 = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte});
val iron_cable_i3 = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte});
val glass_fibre_cable = <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte});
val crystal_memory = <ic2:crystal_memory>.withTag({});

# Tooling
val small_power_unit = <ic2:crafting:11>;
val power_unit = <ic2:crafting:12>;

val energy_storage_upgrade = <ic2:upgrade:2>;

# Machinery
val basic_machine_casing = <ic2:resource:12>;
val advanced_machine_casing = <ic2:resource:13>;

val furnace_ = <minecraft:furnace>;
val generator = <ic2:te:3>;
val electric_heater = <ic2:te:12>;
val electric_motor = <ic2:te:16>;
val energy_o_mat = <ic2:te:65>;
val matter_fabricator = <ic2:te:61>;
val thermal_centrifuge = <ic2:te:52>;
val pattern_storage = <ic2:te:62>;
val mv_transformer = <ic2:te:78>;
val hv_transformer = <ic2:te:79>;
val ev_transformer = <ic2:te:80>;

# Stuff that actual needs power to work. All of this breaks because of how IndustrialCraft insists on using NBT data...
val re_battery = <ic2:re_battery:26>.withTag({charge: 0.0});
val advanced_re_battery = <ic2:advanced_re_battery:26>.withTag({charge: 0.0});
val energy_crystal = <ic2:energy_crystal:26>.withTag({charge: 0.0});
val lapotron_crystal = <ic2:lapotron_crystal:26>.withTag({charge: 0.0});
val mining_laser = <ic2:mining_laser:26>.withTag({charge: 0.0});
val batbox = <ic2:te:72>.withTag({energy: 0.0});
val cesu = <ic2:te:73>.withTag({energy: 0.0});
val mfe = <ic2:te:74>.withTag({energy: 0.0});
val mfsu = <ic2:te:75>.withTag({energy: 0.0});

# Let us now fix the mess that is IC2 crafting...
recipes.addShapeless(re_battery, [<ic2:re_battery>.anyDamage()]);
recipes.addShapeless(advanced_re_battery, [<ic2:advanced_re_battery>.anyDamage()]);
recipes.addShapeless(energy_crystal, [<ic2:energy_crystal>.anyDamage()]);
recipes.addShapeless(lapotron_crystal, [<ic2:lapotron_crystal>.anyDamage()]);
recipes.addShapeless(mining_laser, [<ic2:mining_laser>.anyDamage()]);
recipes.addShapeless(batbox, [<ic2:te:72>]);
recipes.addShapeless(cesu, [<ic2:te:73>]);
recipes.addShapeless(mfe, [<ic2:te:74>]);
recipes.addShapeless(mfsu, [<ic2:te:75>]);

recipes.addShaped(re_battery, [[null, tin_cable_i1, null], [tin_casing, redstone, tin_casing], [tin_casing, redstone, tin_casing]]);
recipes.addShaped(advanced_re_battery, [[copper_cable_i1, bronze_casing, copper_cable_i1], [bronze_casing, sulfur, bronze_casing], [bronze_casing, lead_dust, bronze_casing]]);
recipes.addShaped(energy_crystal, [[energium_dust, diamond_dust, energium_dust], [diamond_dust, fluix_crystal, diamond_dust], [energium_dust, diamond_dust, energium_dust]]);
recipes.addShaped(lapotron_crystal, [[lapis_dust, advanced_circuit, lapis_dust], [lapis_dust, energy_crystal, lapis_dust], [lapis_dust, advanced_circuit, lapis_dust]]);
recipes.addShaped(mining_laser, [[redstone, redstone, energy_crystal], [advanced_alloy, advanced_alloy, advanced_circuit], [null, advanced_alloy, advanced_alloy]]);
recipes.addShaped(batbox, [[plank, tin_cable_i1, plank], [re_battery, re_battery, re_battery], [plank, plank, plank]]);
recipes.addShaped(cesu, [[bronze_plate, copper_cable_i1, bronze_plate], [advanced_re_battery, advanced_re_battery, advanced_re_battery], [bronze_plate, bronze_plate, bronze_plate]]);
recipes.addShaped(mfe, [[gold_cable_i2, energy_crystal, gold_cable_i2], [energy_crystal, basic_machine_casing, energy_crystal], [gold_cable_i2, energy_crystal, gold_cable_i2]]);
recipes.addShaped(mfsu, [[lapotron_crystal, advanced_circuit, lapotron_crystal], [lapotron_crystal, mfe, lapotron_crystal], [lapotron_crystal, advanced_machine_casing, lapotron_crystal]]);

# Fixing collateral damage...
recipes.addShaped(generator, [[null, re_battery, null], [null, basic_machine_casing, null], [null, furnace_, null]]);
recipes.addShaped(generator, [[null, re_battery, null], [iron_plate, iron_plate, iron_plate], [null, furnace_, null]]);
recipes.addShaped(electric_heater, [[iron_casing, re_battery, iron_casing], [iron_casing, basic_circuit, iron_casing], [iron_casing, heat_conductor, iron_casing]]);
recipes.addShaped(electric_motor, [[iron_casing, re_battery, iron_casing], [iron_casing, iron_shaft, iron_casing], [iron_casing, motor, iron_casing]]);
recipes.addShaped(energy_o_mat, [[redstone, re_battery, redstone], [copper_cable_i1, basic_machine_casing, copper_cable_i1]]);
recipes.addShaped(small_power_unit, [[null, copper_cable_i0, iron_casing], [re_battery, basic_circuit, motor], [null, copper_cable_i0, iron_casing]]);
recipes.addShaped(power_unit, [[re_battery, copper_cable_i0, iron_casing], [re_battery, basic_circuit, motor], [re_battery, copper_cable_i0, iron_casing]]);
recipes.addShaped(energy_storage_upgrade, [[plank, plank, plank], [copper_cable_i1, re_battery, copper_cable_i1], [plank, basic_circuit, plank]]);
recipes.addShaped(hv_transformer, [[null, gold_cable_i2, null], [basic_circuit, mv_transformer, advanced_re_battery], [null, gold_cable_i2, null]]);
recipes.addShaped(ev_transformer, [[null, iron_cable_i3, null], [advanced_circuit, hv_transformer, lapotron_crystal], [null, iron_cable_i3, null]]);
recipes.addShaped(matter_fabricator, [[glowstone, advanced_circuit, glowstone], [advanced_machine_casing, lapotron_crystal, advanced_machine_casing], [glowstone, advanced_circuit, glowstone]]);
recipes.addShaped(thermal_centrifuge, [[coil, mining_laser, coil], [iron_ingot, advanced_machine_casing, iron_ingot], [iron_ingot, motor, iron_ingot]]);
recipes.addShaped(pattern_storage, [[reinforced_stone, reinforced_stone, reinforced_stone], [crystal_memory, advanced_machine_casing, crystal_memory], [mining_laser, advanced_circuit, mining_laser]]);

# Recipes that actually needed changing
recipes.addShaped(glass_fibre_cable, [[glass, glass, glass], [energium_dust, silver_dust, diamond_dust], [glass, glass, glass]]);
