import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val itemsToDisable =[
  // Garden cloche
  //note: Disabled to encourage more complex farms
  <immersiveengineering:metal_device1:13>,
] as IItemStack[];

val craftingToDisable =[
  // Garden cloche
  <immersiveengineering:metal_device1:13>,
  // Faraday suit (new recipe added below)
  <immersiveengineering:faraday_suit_head>,
  <immersiveengineering:faraday_suit_chest>,
  <immersiveengineering:faraday_suit_legs>,
  <immersiveengineering:faraday_suit_feet>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Script by DolphinBlaster
// Makes Immersive Engineering relays and wire connectors require Magneticraft wire connectors. These must be made in the Thermionic Fabricator.

// MV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:2>);
 
// MV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector:2> * 4,
    [[null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
 
// MV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:3>);
 
// MV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:3> * 8,
    [[null, null, null],
    [null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
	
// Removing Industrial Squeezer Leather Recipe
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);

// Change aluminum wire to tin wire
<immersiveengineering:material:22>.displayName = "Tin Wire";
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <minecraft:shears:*>.transformDamage()]);
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <immersiveengineering:tool:1>]);

mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:22>);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:22> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2000);
 
// Faraday Armor (Aluminum plate replaced with Tin plate) recipes
// Faraday Helmut
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_head>,
    [[null, null, null],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Chestplate
recipes.addShaped(<immersiveengineering:faraday_suit_chest>,
    [[<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
// Faraday Leggings
recipes.addShaped(<immersiveengineering:faraday_suit_legs>,
    [[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Boots
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_feet>,
    [[null, null, null],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
	
// Crusher: Nickel ore recipe removal
mods.immersiveengineering.Crusher.removeRecipesForInput(<thermalfoundation:ore:5>);
 
// Crusher: Nickel ore (without Platinum dust) recipe
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:69> * 2, <ore:oreNickel>, 2048);

#Script by DolphinBlaster
// Removes Gold ore -> 2 Gold dust Crusher recipe
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:1>);

// Crusher: Gold ore -> 2 Gold dust (without cinnabar) recipe
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 2, <ore:oreGold>, 2048);

// Change the recipes of the Immersive Engineering steel fence, steel scaffolding and steel fence gate to require steel tool rods from Tinkers
 
 val steelRod = <tconstruct:tool_rod>.withTag({Material: "steel"});
 
 
	// Steel Fence Gate
recipes.removeShaped(<engineersdoors:fencegate_steel>);
recipes.addShaped(<engineersdoors:fencegate_steel> * 2,
    [[null, null, null],
     [steelRod, <thermalfoundation:material:160> , steelRod ],
     [steelRod, <thermalfoundation:material:160> , steelRod ]]);
     
	// Steel Fence
recipes.removeShaped(<immersiveengineering:metal_decoration1>);
recipes.addShaped(<immersiveengineering:metal_decoration1> * 6,
    [[null, null, null],
     [<thermalfoundation:material:160>, steelRod , <thermalfoundation:material:160>],
     [<thermalfoundation:material:160>, steelRod , <thermalfoundation:material:160>]]);
     
	// Steel Scaffolding  
recipes.removeShaped(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 12,
    [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
     [null, steelRod, null],
     [steelRod, null, steelRod]]);
	

	// amplifier electron tube
recipes.removeByRecipeName("immersiveengineering:toolupgrades/revolver_electro");
recipes.addShaped("gear_shaped_amplifierElectronTube", <immersiveengineering:toolupgrade:6>,
    [[<ore:electronTube>, <ore:electronTube>, <ore:electronTube>],
    [steelRod, <ore:wireCopper>, steelRod]]);
	

 
	// steel wallmount
recipes.removeByRecipeName("immersiveengineering:metal_decoration/steel_wallmount");
recipes.addShaped("gear_shaped_steelWallMount", <immersiveengineering:metal_decoration2:1> * 4,
    [[<ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, steelRod]]);
	

 
	// ladder
recipes.removeByRecipeName("immersiveengineering:metal_decoration/ladder");
recipes.addShaped("gear_shaped_tool_rod_steel_ladder", <immersiveengineering:metal_ladder> * 6,
    [[steelRod, null, steelRod],
    [steelRod, steelRod, steelRod],
    [steelRod, null, steelRod]]);
 
	// steel wallmount
recipes.removeByRecipeName("immersiveengineering:connectors/connector_structural");
recipes.addShaped("gear_shaped_tool_rod_steel_connector", <immersiveengineering:connector:6> * 9,
    [[<ore:ingotSteel>, steelRod, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
 
	// strip curtain
recipes.removeByRecipeName("immersiveengineering:cloth_devices/strip_curtain");
recipes.addShaped("gear_shaped_tool_rod_steel_ladder", <immersiveengineering:metal_ladder> * 3,
    [[steelRod, steelRod, steelRod],
    [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>]]);
	
#Script by DeviantCrafter
//Prevents hammers from creating lightning rods, functionally disabling the multiblock
recipes.removeShaped(<immersiveengineering:tool>);
val hammer = <immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:Lightningrod"]});

recipes.addShaped(hammer, [[null, <ore:ingotIron>, <ore:string>], [null, <ore:stickWood>, <ore:ingotIron>], [<ore:stickWood>, null, null]]);



scripts.functions.applyOreDict(<immersiveengineering:material:18>,<ore:dustGraphite>,true);

val ironIngot = <ore:ingotIron>;
val goldIngot = <ore:ingotGold>;
val copperIngot = <ore:ingotCopper>;
val tinIngot = <ore:ingotTin>;
val leadIngot = <ore:ingotLead>;
val nickelIngot = <ore:ingotNickel>;
val electrumIngot = <ore:ingotElectrum>;
val steelIngot = <ore:ingotSteel>;

val treatedWood = <ore:plankTreatedWood>;

val redstone = <ore:dustRedstone>;
val redstoneBlock = <ore:blockRedstone>;

val electrumDust = <thermalfoundation:material:97>;
val copperDust = <ore:dustCopper>;
val goldDust = <ore:dustGold>;
val tinNugget = <thermalfoundation:material:193>;
val glass = <ore:blockGlass>;

// Capacitors
recipes.removeShaped(<immersiveengineering:metal_device0:0>);
recipes.addShaped(<immersiveengineering:metal_device0:0>,
[[ironIngot, ironIngot, ironIngot],
 [copperIngot, goldIngot, copperIngot],
 [treatedWood, redstone, treatedWood]]);

recipes.removeShaped(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
[[ironIngot, ironIngot, ironIngot],
 [electrumIngot, goldIngot, electrumIngot],
 [treatedWood, redstoneBlock, treatedWood]]);

recipes.removeShaped(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
[[ironIngot, ironIngot, ironIngot],
 [nickelIngot, <ore:blockGold>, nickelIngot],
 [treatedWood, redstoneBlock, treatedWood]]);

// Conveyor belt
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8,
[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
 [nickelIngot, <minecraft:redstone>, nickelIngot]]);

// 
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
[[nickelIngot, <immersiveengineering:material:8>, nickelIngot],
 [copperIngot, copperIngot, copperIngot],
 [nickelIngot, <immersiveengineering:material:8>, nickelIngot]]);


 // Electrum -> Corinthian Bronze

	// Crafting electrum grit
recipes.removeShapeless(<immersiveengineering:metal:16>);
recipes.addShapeless(<immersiveengineering:metal:16> * 2,
	[<ore:dustGold>, <ore:dustCopper>]);

	// Alloy smelter
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperIngot, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperIngot, 200);

	// Arc furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldDust]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldDust]);

#renames:
scripts.functions.rename(<immersiveengineering:ore:5>,"Uraninite Ore");

// Excavator

mods.immersiveengineering.Excavator.removeMineral("Bauxite");
mods.immersiveengineering.Excavator.removeMineral("Galena");
mods.immersiveengineering.Excavator.removeMineral("Lead");
mods.immersiveengineering.Excavator.removeMineral("Nickel");
mods.immersiveengineering.Excavator.removeMineral("Platinum");
mods.immersiveengineering.Excavator.removeMineral("Silver");
mods.immersiveengineering.Excavator.removeMineral("Uranium");

// You can also craft a bayonet with an iron sword blade, which conveniently stacks to 64
recipes.addShaped(<immersiveengineering:toolupgrade:4>,
    [[<tconstruct:sword_blade>.withTag({Material: "iron"}), <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:plankTreatedWood>]]);
	
// HV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:5>);

// HV Wire Relay: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:5> * 8, 
	[[null, <magneticraft:connector>, null],
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>], 
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>]]);
	
// HV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:4>);

// HV Wire Connector: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:4> * 4, 
	[[null, <magneticraft:connector>, null],
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>], 
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>]]);
	
// Engineer's Blueprint (Crafting Components) recipe removal
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));

// Engineer's Blueprint (Crafting Components) Aluminum -> Tin
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 
	[[<ore:ingotCopper>, <ore:ingotTin>, <minecraft:iron_ingot>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
	
// Casull Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "casull"}));

// Casull Cartridge: Lead Nugget -> Copper Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "casull"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetCopper>, <ore:nuggetCopper>]);

// Silver Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));

// Silver Cartridge: Lead Nugget -> Gold Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "silver"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

<immersiveengineering:bullet:2>.withTag({bullet: "silver"}).displayName = "Holy Cartridge";

var blazePowder = <ore:dustBlaze>;

// Dragon's Breath Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}));

// Dragon's Breath Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, blazePowder]);
	
// Flare Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 16777090, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 2925323, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 13381126, bullet: "flare"}));

// Flare Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 16777090, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeRed>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 2925323, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeGreen>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 13381126, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeYellow>]);

// Napalm recipe removal
mods.immersiveengineering.Mixer.removeRecipe(<liquid:napalm>);

// Napalm: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Mixer.addRecipe(<liquid:napalm>, <liquid:gasoline>, [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>], 2048);
