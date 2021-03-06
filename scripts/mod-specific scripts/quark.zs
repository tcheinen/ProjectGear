import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;

val itemsToDisable =[
  // Bark blocks
  // Barkifier lets you make bark from any mod, so these items were redundant
  <quark:bark:0>,
  <quark:bark:1>,
  <quark:bark:2>,
  <quark:bark:3>,
  <quark:bark:4>,
  <quark:bark:5>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
  
val craftingToDisable =[
  // Bark blocks
  <quark:bark:0>,
  <quark:bark:1>,
  <quark:bark:2>,
  <quark:bark:3>,
  <quark:bark:4>,
  <quark:bark:5>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

#Script by Dr.Marx
#Craft Quark crystals 
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal> * 4, <botania:quartz:1>, <liquid:water_white> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:1> * 4, <botania:quartz:1>, <liquid:water_red> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:2> * 4, <botania:quartz:1>, <liquid:water_orange> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:3> * 4, <botania:quartz:1>, <liquid:water_yellow> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:4> * 4, <botania:quartz:1>, <liquid:water_lime> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:5> * 4, <botania:quartz:1>, <liquid:water_light_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:6> * 4, <botania:quartz:1>, <liquid:water_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:7> * 4, <botania:quartz:1>, <liquid:water_magenta> * 1000);

mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal> * 4, <thermalfoundation:glass:3>, <liquid:water_white> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:1> * 4, <thermalfoundation:glass:3>, <liquid:water_red> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:2> * 4, <thermalfoundation:glass:3>, <liquid:water_orange> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:3> * 4, <thermalfoundation:glass:3>, <liquid:water_yellow> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:4> * 4, <thermalfoundation:glass:3>, <liquid:water_lime> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:5> * 4, <thermalfoundation:glass:3>, <liquid:water_light_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:6> * 4, <thermalfoundation:glass:3>, <liquid:water_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:7> * 4, <thermalfoundation:glass:3>, <liquid:water_magenta> * 1000);


// Craft wither ash from a necrotic bone
recipes.addShapeless(<quark:black_ash> * 5,[<tconstruct:materials:17>]);

// Earthworks Chalk -> Quark Marble
recipes.addShapeless(<earthworks:block_chalk>,
    [<quark:marble>]);
	
// ProjectRed Basalt -> Quark Basalt
recipes.addShapeless(<projectred-exploration:stone:3>,
    [<quark:basalt>]);