mods.MobStages.addStage("DimensionTraveler", "minecraft:zombie");
mods.MobStages.addStage("DimensionTraveler", "minecraft:skeleton");
mods.MobStages.addStage("DimensionTraveler", "minecraft:enderman");

mods.MobStages.addStage("NetherTraveler", "enderiozoo:withercat");
mods.MobStages.addStage("NetherTraveler", "enderiozoo:witherwitch");

mods.MobStages.addStage("EndTraveler", "enderiozoo:concussioncreeper");
mods.MobStages.addStage("EndTraveler", "enderiozoo:enderminy");

# mods.MobStages.addStage("MansionTraveler", "primitivemobs:trollager");
# mods.MobStages.addStage("MansionTraveler", "primitivemobs:mimic");

mods.MobStages.addStage("BetweenTraveler", "nex:wight");

mods.MobStages.addStage("TwilightTraveler", "primitivemobs:bewitched_tome");
mods.MobStages.addStage("TwilightTraveler", "primitivemobs:grovesprite");

mods.MobStages.addStage("ErebusTraveler", "primitivemobs:baby_spider");
mods.MobStages.addStage("ErebusTraveler", "primitivemobs:mother_spider");


events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent) {
  event.player.addGameStage("DimensionTraveler");
  if(event.to == -1) {
    if(!event.player.hasGameStage("NetherTraveler")) {
      event.player.addGameStage("NetherTraveler");
      event.player.sendChat("You have traveled to the Nether. Wither Witches and Wither Cats may now spawn.");
    }
  }
  if(event.to == 1) {
    if(!event.player.hasGameStage("EndTraveler")) {
      event.player.addGameStage("EndTraveler");
      event.player.sendChat("You have traveled to the End. Concussion Creepers and Enderminys may now spawn.");
    }
  }
  if(event.to == 7) {
    if(!event.player.hasGameStage("TwilightTraveler")) {
      event.player.addGameStage("TwilightTraveler");
      event.player.sendChat("You have traveled to the Twilight Forest. Bewitched Tomes and Grove Sprites may now spawn.");
    }
  }
  if(event.to == 66) {
    if(!event.player.hasGameStage("ErebusTraveler")) {
      event.player.addGameStage("ErebusTraveler");
      event.player.sendChat("You have traveled to the Erebus. Spider Mothers and their children may now spawn.");
    }
  }
  if(event.to == -67) {
    if(!event.player.hasGameStage("BetweenTraveler")) {
      event.player.addGameStage("BetweenTraveler");
      event.player.sendChat("You have traveled to the Betweenlands. Wights may now spawn.");
    }
  }
});
