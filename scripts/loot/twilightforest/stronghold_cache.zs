#modloaded loottweaker twilightforest

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# variables
  val tool_dam = Functions.setDamage(0.5, 1.0);
  val tool_ench = Functions.parse({"levels": 30, "treasure": true, "function": "enchant_with_levels"} as crafttweaker.data.IData);
  val steadfast = Functions.parse({"function": "minecraft:set_species_nbt", "speciesUid": "forestry.speciesSteadfast"} as crafttweaker.data.IData);
  val ancient_tome = Functions.parse({"function": "quark:enchant_tome"} as crafttweaker.data.IData);
  val eb_any = Functions.parse({"function": "ebwizardry:random_spell"} as crafttweaker.data.IData);
#  val eb_h_any = Functions.parse({"function": "ebwizardry:random_spell", "elements":["healing"]} as crafttweaker.data.IData);
  val eb_novice = Functions.parse({"function": "ebwizardry:random_spell", "tiers":["basic"]} as crafttweaker.data.IData);
  val eb_apprentice = Functions.parse({"function": "ebwizardry:random_spell", "tiers":["apprentice"]} as crafttweaker.data.IData);
  val eb_advanced = Functions.parse({"function": "ebwizardry:random_spell", "tiers":["advanced"]} as crafttweaker.data.IData);
  val eb_master = Functions.parse({"function": "ebwizardry:random_spell", "tiers":["master"]} as crafttweaker.data.IData);
#  val eb_h_novice = Functions.parse({"function": "ebwizardry:random_spell", "elements":["healing"], "tiers":["basic"]} as crafttweaker.data.IData);
#  val eb_h_apprentice = Functions.parse({"function": "ebwizardry:random_spell", "elements":["healing"], "tiers":["apprentice"]} as crafttweaker.data.IData);
#  val eb_h_advanced = Functions.parse({"function": "ebwizardry:random_spell", "elements":["healing"], "tiers":["advanced"]} as crafttweaker.data.IData);
#  val eb_h_master = Functions.parse({"function": "ebwizardry:random_spell", "elements":["healing"], "tiers":["master"]} as crafttweaker.data.IData);

  val tf_stronghold_cache = LootTables.getTable("twilightforest:structures/stronghold_cache/stronghold_cache");

  #########################################
  ### Twilight Forest: Stronghold Cache ###
  #########################################
/*
    Modify the twilight forest stronghold cache table to contain...
*/
  tf_stronghold_cache.clear();

  val tf_common = tf_stronghold_cache.addPool("common", 3, 7, 0, 0);
  tf_common.addItemEntryHelper(<minecraft:gunpowder>,              30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<minecraft:stick>,                  30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<minecraft:coal>,                   30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<minecraft:wool:11>,                30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<materialpart:brass:ingot>,         10, 0, [Functions.setCount(1, 9)], []);
  tf_common.addItemEntryHelper(<materialpart:bronze:ingot>,        10, 0, [Functions.setCount(1, 9)], []);
  tf_common.addItemEntryHelper(<materialpart:tin:ingot>,           10, 0, [Functions.setCount(1, 9)], []);
  tf_common.addItemEntryHelper(<materialpart:zinc:ingot>,          10, 0, [Functions.setCount(1, 9)], []);
  tf_common.addItemEntryHelper(<immersiveengineering:metal:0>,     10, 0, [Functions.setCount(1, 6)], []); # Copper
  tf_common.addItemEntryHelper(<immersiveengineering:metal:3>,     10, 0, [Functions.setCount(1, 6)], []); # Silver
  tf_common.addItemEntryHelper(<twilightforest:maze_wafer>,        30, 0, [Functions.setCount(1,12)], []);
  tf_common.addItemEntryHelper(<twilightforest:ironwood_ingot>,    30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<twilightforest:firefly>,           30, 0, [Functions.setCount(1, 5)], []);
  tf_common.addItemEntryHelper(<twilightforest:firefly>,           30, 0, [Functions.setCount(1, 5)], []);
  tf_common.addItemEntryHelper(<ebwizardry:identification_scroll>, 30, 0, [Functions.setCount(1, 4)], []);
  tf_common.addItemEntryHelper(<ebwizardry:scroll>,                30, 0, [eb_any], []);
#  tf_common.addItemEntryHelper(<ebwizardry:scroll>,                30, 0, [eb_h_any], []);

  val tf_uncommon = tf_stronghold_cache.addPool("uncommon", 2, 4, 0, 0);
  tf_common.addItemEntryHelper(<minecraft:bucket>,                     300, 0, [Functions.setCount(1, 3)], []);
  tf_common.addItemEntryHelper(<minecraft:gold_ingot>,                 300, 0, [Functions.setCount(1, 3)], []);
  tf_common.addItemEntryHelper(<twilightforest:ironwood_ingot>,        300, 0, [Functions.setCount(1, 6)], []);
  tf_common.addItemEntryHelper(<twilightforest:armor_shard>,           300, 0, [Functions.setCount(1, 6)], []);
  tf_common.addItemEntryHelper(<twilightforest:charm_of_keeping_1>,    300, 0, [Functions.setCount(1, 3)], []);
  tf_common.addItemEntryHelper(<twilightforest:steeleaf_ingot>,        300, 0, [Functions.setCount(1, 6)], []);
  tf_uncommon.addItemEntryHelper(<ebwizardry:spell_book>,              180, 0, [eb_novice], []);     # 15 novice spells
  tf_uncommon.addItemEntryHelper(<ebwizardry:spell_book>,               90, 0, [eb_apprentice], []); # 45 apprentice spells
  tf_uncommon.addItemEntryHelper(<ebwizardry:spell_book>,               30, 0, [eb_advanced], []);   # 55 advanced spells
#  tf_uncommon.addItemEntryHelper(<ebwizardry:spell_book>,              180, 0, [eb_h_novice], []);
#  tf_uncommon.addItemEntryHelper(<ebwizardry:spell_book>,               90, 0, [eb_h_apprentice], []);

  val tf_rare = tf_stronghold_cache.addPool("rare", 1, 1, 0, 0);
  tf_rare.addItemEntryHelper(<minecraft:emerald>,               8, 0, [Functions.setCount(1, 2)], []);
  tf_rare.addItemEntryHelper(<minecraft:ender_chest>,           8, 0, [Functions.setCount(1, 2)], []);
  tf_rare.addItemEntryHelper(<twilightforest:knightmetal_ingot>,8, 0, [Functions.setCount(1, 2)], []);
  tf_rare.addItemEntryHelper(<twilightforest:maze_map_focus>,   8, 0, [Functions.setCount(1, 2)], []);
  tf_rare.addItemEntryHelper(<twilightforest:steeleaf_sword>,   8, 0, [tool_ench], []);
  tf_rare.addItemEntryHelper(<twilightforest:ironwood_sword>,   8, 0, [tool_ench], []);
  tf_rare.addItemEntry(<ebwizardry:arcane_tome:2>,              3, 0);
  tf_rare.addItemEntry(<ebwizardry:arcane_tome:3>,              1, 0);

  ### If you adjust the weights or add items, increase the weight of the empty entry. ###
  ### The goal is to keep the chance of an ultrarare item at 25%                      ###
  val tf_ultrarare = tf_stronghold_cache.addPool("ultrarare", 1, 1, 0, 0);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:bane_of_arthropods>.makeEnchantment(6).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:sharpness>.makeEnchantment(5).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:smite>.makeEnchantment(6).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:protection>.makeEnchantment(4).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:depth_strider>.makeEnchantment(3).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:mending>.makeEnchantment(1).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:frost_walker>.makeEnchantment(1).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:silk_touch>.makeEnchantment(1).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:fortune>.makeEnchantment(4).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:looting>.makeEnchantment(4).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:infinity>.makeEnchantment(1).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<minecraft:enchanted_book>, 5, 0,
    [Functions.setNBT(<enchantment:minecraft:power>.makeEnchantment(6).makeTag())], []);
  tf_ultrarare.addItemEntryHelper(<ebwizardry:spell_book>,   1, 0, [eb_master], []);
#  tf_ultrarare.addItemEntryHelper(<ebwizardry:spell_book>,  1, 0, [eb_h_advanced], []);
  tf_ultrarare.addEmptyEntry(183, 0);

  # Add a chance to get various materials. These used to never spawn in the TF.
  tf_stronghold_cache.addPool("forestry_bag", 1, 1, 0, 0).addItemEntryHelper(<forestry:adventurer_bag>, 1, 0, [], [Conditions.randomChance(0.05)]);
  tf_stronghold_cache.addPool("forestry_bee", 1, 1, 0, 0).addItemEntryHelper(<forestry:bee_drone_ge>, 1, 0, [steadfast], [Conditions.randomChance(0.10)]);
  tf_stronghold_cache.addPool("blood", 1, 1, 0, 0).addItemEntryHelper(<evilcraft:condensed_blood>, 1, 0, [Functions.setCount(1, 32)], [Conditions.randomChance(0.25)]);
  tf_stronghold_cache.addPool("closure_box", 1, 1, 0, 0).addLootTableEntry("evilcraft:inject/chests/box_of_eternal_closure", 1);
  tf_stronghold_cache.addPool("overgrowth", 1, 1, 0, 0).addItemEntryHelper(<botania:overgrowthseed>, 1, 0, [], [Conditions.randomChance(0.05)]);
  tf_stronghold_cache.addPool("lotus", 1, 1, 0, 0).addItemEntryHelper(<botania:blacklotus>, 1, 0, [], [Conditions.randomChance(0.35)]);
  tf_stronghold_cache.addPool("tome", 1, 1, 0, 0).addItemEntryHelper(<quark:ancient_tome>, 1, 0, [ancient_tome], [Conditions.randomChance(0.05)]);
