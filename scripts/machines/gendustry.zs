#modloaded gendustry

# Gendustry
  recipes.remove(<gendustry:bee_receptacle>);
  recipes.addShaped(<gendustry:bee_receptacle>,
    [[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
     [<ore:dropRoyalJelly>, <minecraft:glass_pane:*>, <ore:dropRoyalJelly>],
     [<minecraft:redstone>, <minecraft:light_weighted_pressure_plate:*>, <minecraft:redstone>]]);
  recipes.addShaped(<gendustry:labware> * 16,
    [[<minecraft:glass_pane:*>, null, <minecraft:glass_pane:*>],
     [<minecraft:glass_pane:*>, <ore:itemPollen>, <minecraft:glass_pane:*>],
     [null, <minecraft:glass_pane:*>, null]]);
  recipes.addShaped(<gendustry:mutatron>,
    [[<gendustry:bee_receptacle:*>, <gendustry:GeneticsProcessor:*>, <ore:ingotBronze>],
     [<gendustry:PowerModule:*>, <forestry:sturdy_machine:*>, <gendustry:bee_receptacle:*>],
     [<gendustry:bee_receptacle:*>, <gendustry:mutagen_tank:*>, <ore:ingotBronze>]]);
  recipes.addShaped(<gendustry:mutatron_advanced>,
    [[<ore:gearBronze>, <minecraft:quartz:*>, <ore:gearBronze>],
     [<gendustry:GeneticsProcessor:*>, <gendustry:mutatron:*>, <gendustry:GeneticsProcessor:*>],
     [<ore:gearBronze>, <gendustry:PowerModule:*>, <ore:gearBronze>]]);

