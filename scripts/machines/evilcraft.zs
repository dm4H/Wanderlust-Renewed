#modloaded evilcraft

var mending = <minecraft:enchanted_book>.withTag({StoredEnchantments:[{id:70,lvl:1}]}).onlyWithTag({StoredEnchantments:[{id:70,lvl:1}]});
var mending2 = <minecraft:enchanted_book>.withTag({StoredEnchantments:[{lvl:1,id:70}]}).onlyWithTag({StoredEnchantments:[{lvl:1,id:70}]});
var mending3 = <minecraft:enchanted_book>.withTag({StoredEnchantments:[{lvl:1 as short,id:70 as short}]}).onlyWithTag({StoredEnchantments:[{lvl:1 as short,id:70 as short}]});
var mending4 = <minecraft:enchanted_book>.withTag({StoredEnchantments:[{id:70 as short,lvl:1 as short}]}).onlyWithTag({StoredEnchantments:[{id:70 as short,lvl:1 as short}]});

# Evilcraft
  recipes.remove(<evilcraft:blood_chest>);
  recipes.addShaped(<evilcraft:blood_chest>,
    [[<ore:plankWood>,mending,<ore:plankWood>],
     [<evilcraft:dark_power_gem>,<ore:chest>,<evilcraft:dark_power_gem>],
     [<ore:plankWood>,<evilcraft:dark_power_gem>,<ore:plankWood>]]);
  recipes.addShaped(<evilcraft:blood_chest>,
    [[<ore:plankWood>,mending2,<ore:plankWood>],
     [<evilcraft:dark_power_gem>,<ore:chest>,<evilcraft:dark_power_gem>],
     [<ore:plankWood>,<evilcraft:dark_power_gem>,<ore:plankWood>]]);
  recipes.addShaped(<evilcraft:blood_chest>,
    [[<ore:plankWood>,mending3,<ore:plankWood>],
     [<evilcraft:dark_power_gem>,<ore:chest>,<evilcraft:dark_power_gem>],
     [<ore:plankWood>,<evilcraft:dark_power_gem>,<ore:plankWood>]]);
  recipes.addShaped(<evilcraft:blood_chest>,
    [[<ore:plankWood>,mending4,<ore:plankWood>],
     [<evilcraft:dark_power_gem>,<ore:chest>,<evilcraft:dark_power_gem>],
     [<ore:plankWood>,<evilcraft:dark_power_gem>,<ore:plankWood>]]);

  recipes.remove(<evilcraft:colossal_blood_chest>);
  recipes.addShaped(<evilcraft:colossal_blood_chest>,
    [[<evilcraft:reinforced_undead_plank>,<evilcraft:dark_power_gem>,<evilcraft:reinforced_undead_plank>],
     [<evilcraft:dark_power_gem>,<evilcraft:blood_chest>,<evilcraft:dark_power_gem>],
     [<evilcraft:reinforced_undead_plank>,<evilcraft:dark_power_gem>,<evilcraft:reinforced_undead_plank>]]);

  # Eternal Water Block
  recipes.addShaped(<evilcraft:eternal_water_block>,
    [[null,<ore:gemDark>,null],
     [<ore:paneGlass>,<evilcraft:bucket_eternal_water>,<ore:paneGlass>],
     [null,<ore:gemDark>,null]]);

# Convenience recipes
  recipes.addShapeless("Chalice_NBT_recipe", <evilcraft:entangled_chalice>,
    [<evilcraft:entangled_chalice>.marked("chalice")],
    function(out, ins, cInfo) {
      val map as crafttweaker.data.IData = {rotatable:0, rotation:0, x:0, y:0, z:0, entangledChalice:{tankID:"", capacity:0}, id:"", items:[]};
      return out.withTag(ins.chalice.tag - map);
    }, null);
