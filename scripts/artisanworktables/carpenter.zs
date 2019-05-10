#modloaded artisanworktables

import mods.artisanworktables.builder.RecipeBuilder;

# ===========================
# ==== Carpenter's Table ====
# ===========================
  # Planks
      # in the planks.zs script.
    RecipeBuilder.get("carpenter")
      .setShapeless([<ore:plankWood>])
      .setFluid(<liquid:creosote> * 125)
      .setSecondaryIngredients([<tconstruct:casting:1>.reuse()])
      .addOutput(<immersiveengineering:treated_wood>)
      .create();
    RecipeBuilder.get("carpenter")
      .setShapeless([<ore:logWood>])
      .setFluid(<liquid:creosote> * 500)
      .setSecondaryIngredients([<tconstruct:casting:1>.reuse()])
      .addOutput(<immersiveengineering:treated_wood> * 4)
      .create();
