#

/*
  This file will be for modifying the recipes of vanilla's "machines," by which I mean
  blocks that perform some function, such as pistons, hoppers, furnaces, and other 
  redstone devices.
*/

### Furnace ###
#  recipes.remove(<minecraft:furnace>);
#  recipes.addShaped("wlr_furnace", <minecraft:furnace>,
#    [[<tconstruct:materials:2>,<tconstruct:materials:2>,<tconstruct:materials:2>],
#     [<tconstruct:materials:2>,<ore:charcoal>,          <tconstruct:materials:2>],
#     [<tconstruct:materials:2>,<tconstruct:materials:2>,<tconstruct:materials:2>]],
#     null,
#     function(output, crafting, player){
#       if(!player.hasGameStage("fireage")) {
#         player.addGameStage("fireage");
#         player.sendChat("You have unlocked the power of fire. Creepers might spawn, now.");
#       }
#     });

### Hopper ###
  recipes.addShaped(<minecraft:hopper>,
    [[<ore:ingotTin>, null,         <ore:ingotTin>],
     [<ore:ingotTin>,<ore:chest>,   <ore:ingotTin>],
     [null,          <ore:ingotTin>, null]]);
  recipes.addShaped(<minecraft:hopper>,
    [[<ore:ingotNickel>, null,            <ore:ingotNickel>],
     [<ore:ingotNickel>,<ore:chest>,      <ore:ingotNickel>],
     [null,             <ore:ingotNickel>, null]]);

### Observer ###
  recipes.addShaped(<minecraft:observer>,
    [[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
     [<ore:dustRedstone>,<ore:dustRedstone>,<appliedenergistics2:material:11>],
     [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);

### Piston ###
  recipes.addShaped(<minecraft:piston>,
    [[<ore:plankWood>,  <ore:plankWood>,   <ore:plankWood>],
     [<ore:cobblestone>,<ore:ingotNickel>, <ore:cobblestone>],
     [<ore:cobblestone>,<ore:dustRedstone>,<ore:cobblestone>]]);
  # clean pistons with eternal water buckets and more.
  recipes.addShapeless(<minecraft:piston>,
    [<minecraft:sticky_piston>,
      <evilcraft:bucket_eternal_water> |
      <botania:waterrod>.giveBack() |
      <xreliquary:emperor_chalice>.giveBack() |
      <minecraft:potion:0>
    ]);
