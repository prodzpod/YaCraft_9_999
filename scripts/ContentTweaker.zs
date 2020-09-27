#loader contenttweaker
#priority 32769

import crafttweaker.game.IGame;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;

import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.DropHandler;
import crafttweaker.block.IBlockDefinition;
import mods.contenttweaker.AxisAlignedBB;

function registerItem(name as string, rarity as string) {
    print("[ContentTweaker.zs] Initializing Item " ~ name);
    var thing = VanillaFactory.createItem(name) as Item;
    thing.rarity = rarity;
    if (rarity == "EPIC") {
        thing.glowing = true;
    }
    thing.creativeTab = <creativetab:materials.base>;
    thing.register();
    print("[ContentTweaker.zs] Initialized Item " ~ name);
}

function registerBlock(name as string, hardness as int, toolClass as string, toolLevel as int, sound as SoundType) {
    print("[ContentTweaker.zs] Initializing Block " ~ name);
    var thing = VanillaFactory.createBlock(name, <blockmaterial:rock>) as Block;
    thing.setCreativeTab(<creativetab:materials.base>);
    thing.setBlockHardness  (hardness);
    thing.setBlockResistance(hardness);
    if (toolClass != "") {
        thing.setToolClass(toolClass);
        thing.setToolLevel(toolLevel);
    }
    thing.setBlockSoundType(sound);
    thing.register();
    print("[ContentTweaker.zs] Initialized Block " ~ name);
}

function registerFluid(name as string, color as int, isLava as bool) {
    print("[ContentTweaker.zs] Initializing Fluid " ~ name);
    var thing = VanillaFactory.createFluid(name, Color.fromInt(color)) as Fluid;
    if (isLava) {
        thing.material = <blockmaterial:lava>;
        thing.temperature = 1000;
        thing.stillLocation   = "contenttweaker:fluids/lava";
        thing.flowingLocation = "contenttweaker:fluids/lava_flow";
    }
    thing.register();
    print("[ContentTweaker.zs] Initialized Fluid " ~ name);
}

function registerIngot(name as string, rarity as string, color as int) {
    registerItem (name, rarity);
    registerBlock("block_of_" ~ name, 25, "pickaxe", 0, <soundtype:metal>);
    registerItem (name ~ "_dust", rarity);
    registerItem (name ~ "_gear", rarity);
    registerItem (name ~ "_plate", rarity);
    registerItem (name ~ "_nugget", rarity);
    registerItem (name ~ "_rod", rarity);
    registerFluid(name, color, true);
}

registerIngot("inert_aethoria"  , "UNCOMMON", 0xecf4f6);
registerIngot("aethoria"        , "RARE"    , 0xc6c9ce);
registerIngot("charged_aethoria", "EPIC"    , 0xfef0d7);
registerIngot("astralite"       , "EPIC"    , 0x646495);

registerFluid("red_essence"        , 0x900000, false);
registerFluid("redder_essence"     , 0xB00000, false);
registerFluid("even_redder_essence", 0xD00000, false);
registerFluid("reddest_essence"    , 0xFF0000, false);

registerItem("red_dust"        , "COMMON");
registerItem("redder_dust"     , "COMMON");
registerItem("even_redder_dust", "UNCOMMON");
registerItem("reddest_dust"    , "RARE");

registerBlock("reddest_stone", 2500, "pickaxe", 4, <soundtype:stone>);

registerBlock("compressed_bone_block", 10, "pickaxe", 0, <soundtype:stone>);
registerBlock("compressed_amber1", 20  , "pickaxe", 0, <soundtype:glass>);
registerBlock("compressed_amber2", 180 , "pickaxe", 0, <soundtype:glass>);
registerBlock("compressed_amber3", 1080, "pickaxe", 0, <soundtype:glass>);

registerItem("clay_cast", "COMMON");
registerItem("clay_cast_gear", "COMMON");
registerItem("clay_cast_gem", "COMMON");
registerItem("clay_cast_ingot", "COMMON");
registerItem("clay_cast_nugget", "COMMON");
registerItem("clay_cast_plate", "COMMON");

registerFluid("netherite", 0x0, true);
registerItem("netherite_nugget", "COMMON");
registerItem("netherite_gear", "COMMON");
registerItem("netherite_plate", "COMMON");
registerItem("netherite_rod", "COMMON");
registerItem("netherite_dust", "COMMON");

registerFluid("mithrillium", 0x0, true);
registerFluid("adaminite"  , 0x0, true);
registerFluid("mithminite" , 0x0, true);

registerFluid("coldiron" , 0x53535A, true);
registerFluid("photonium", 0xFFFFFF, true);
registerFluid("shadowium", 0x000000, true);
registerFluid("orichalcos", 0x0, true);

registerItem("photonium_nugget", "COMMON");
registerItem("shadowium_nugget", "COMMON");
registerItem("orichalcos_nugget", "COMMON");

// Cluster Galore
registerItem("cluster_black_quartz", "COMMON");
registerItem("cluster_amethyst", "COMMON");
registerItem("cluster_garnet", "COMMON");
registerItem("cluster_opal", "COMMON");
registerItem("cluster_certus_quartz", "COMMON");
registerItem("cluster_ender_biotite", "COMMON");

val missingEldritches = ["aluminum", "nickel", "uranium", "ardite", "astralstarmetal", "cobalt", "iridium", "mithril", "osmium", "platinum", "black_quartz", "amethyst", "garnet", "opal", "certus_quartz", "ender_biotite", "ancient_debris"] as string[];
for entry in missingEldritches {
    registerItem("eldritch_cluster_" ~ entry, "COMMON");
}

registerItem("ancient_construct", "UNCOMMON");
registerItem("heart_of_all_seeds", "COMMON");
registerItem("aura_infused_thaumium", "COMMON");
registerItem("aura_infused_thaumium_plate", "COMMON");
registerItem("hue_infused_thaumium", "COMMON");
registerItem("hue_infused_thaumium_plate", "COMMON");
registerFluid("gaiasteel", 0x0, true);

registerItem("blank_rune", "COMMON");
registerItem("blank_rune_darkened", "COMMON");
registerItem("blank_rune_bifrost", "UNCOMMON"); // {"Quark:RuneColor": 16, "Quark:RuneAttached": 1b}
registerItem("blank_rune_advanced_crude", "COMMON");
registerItem("blank_rune_advanced", "RARE");

for item in 0 .. 16 {
    registerItem("attuned_rune_" ~ item, "COMMON");
}

registerItem("rune_of_guilt", "COMMON");
registerItem("rune_of_time", "UNCOMMON");
registerItem("rune_of_space", "UNCOMMON");

registerItem("rune_of_conquest", "UNCOMMON");
registerItem("rune_of_famine", "UNCOMMON");
registerItem("rune_of_war", "UNCOMMON");
registerItem("rune_of_death", "UNCOMMON");

registerItem("rune_of_elements", "RARE");
registerItem("rune_of_power", "RARE");
registerItem("rune_of_seasons", "RARE");
registerItem("rune_of_humanity", "RARE");
registerItem("rune_of_apocalypse", "RARE");
registerItem("rune_of_will", "EPIC");

registerItem("rune_of_blood", "EPIC"); // {"Quark:RuneColor": 14, "Quark:RuneAttached": 1b}
registerItem("rune_of_sacrifice", "EPIC"); // {"Quark:RuneColor": 10, "Quark:RuneAttached": 1b}
registerItem("rune_of_chaos", "EPIC"); // {"Quark:RuneColor": 7, "Quark:RuneAttached": 1b}

registerItem("rune_of_crafting", "EPIC"); // {"Quark:RuneColor": 13, "Quark:RuneAttached": 1b}
registerItem("rune_of_stars", "EPIC"); // {"Quark:RuneColor": 9, "Quark:RuneAttached": 1b}
registerItem("rune_of_order", "EPIC"); // {"Quark:RuneColor": 0, "Quark:RuneAttached": 1b}

registerItem("rune_of_life", "EPIC"); // {"Quark:RuneColor": 2, "Quark:RuneAttached": 1b}
registerItem("rune_of_magic", "EPIC"); // {"Quark:RuneColor": 6, "Quark:RuneAttached": 1b}
registerItem("rune_of_souls", "EPIC"); // {"Quark:RuneColor": 12, "Quark:RuneAttached": 1b}

registerItem("rune_of_colors", "EPIC"); // {"Quark:RuneColor": 16, "Quark:RuneAttached": 1b}
registerItem("rune_of_worlds", "EPIC"); // {"Quark:RuneColor": 5, "Quark:RuneAttached": 1b}
registerItem("rune_of_bifrost", "EPIC"); // {"Quark:RuneColor": 16, "Quark:RuneAttached": 1b}

registerItem("rune_of_awakening", "EPIC"); // {"Quark:RuneColor": 1, "Quark:RuneAttached": 1b}
registerItem("rune_of_ascension", "EPIC"); // {"Quark:RuneColor": 4, "Quark:RuneAttached": 1b}
registerItem("rune_of_the_universe", "EPIC"); // {"Quark:RuneColor": 11, "Quark:RuneAttached": 1b}

registerItem("fabric_of_the_cosmos", "EPIC");

registerBlock("carved_pumpkin", 1, "axe", -1, <soundtype:wood>);
registerBlock("jigsaw", -1, "", -1, <soundtype:stone>);

for item in ["cypress", "elder", "juniper", "dragons_blood", "greatwood", "silverwood", "ironwood", "elvenwood", "willow", "mangrove", "palm", "fir", "pine", "aspen", "maple", "baobab", "cottonwood", "cherry_blossom", "jacaranda", "olive", "blood_infused"] as string[] {
    registerBlock(item ~ "_bark", 2, "axe", -1, <soundtype:wood>);
}
registerBlock("elvenwood_planks", 2, "axe", -1, <soundtype:wood>);
registerBlock("ironwood_bark_1", 2, "axe", -1, <soundtype:wood>);
registerBlock("ironwood_bark_2", 2, "axe", -1, <soundtype:wood>);
registerBlock("juniper_bark_1", 2, "axe", -1, <soundtype:wood>);

registerBlock("naquadah_254_block", 2, "pickaxe", -1, <soundtype:stone>);
registerItem("naquadah_253", "EPIC");
registerItem("naquadah_253_oxide", "EPIC");
registerItem("naquadah_253_tiny", "EPIC");
registerItem("naquadah_253_oxide_tiny", "EPIC");
registerItem("naquadah_254", "EPIC");
registerItem("naquadah_254_oxide", "EPIC");
registerItem("naquadah_254_tiny", "EPIC");
registerItem("naquadah_254_oxide_tiny", "EPIC");
registerFluid("naquadah_253", 0x0, true);
registerFluid("naquadah_254", 0x0, true);
registerFluid("naquadah_253_flouride", 0x0, true);
registerFluid("naquadah_254_flouride", 0x0, true);
registerFluid("naquadah_253_flibe", 0x0, true);
registerFluid("naquadah_254_flibe", 0x0, true);
registerItem("fuel_tbnq", "EPIC");
registerItem("fuel_tbnq_oxide", "EPIC");
registerItem("fuel_tbnq_depleted", "COMMON");
registerItem("fuel_tbnq_oxide_depleted", "COMMON");
registerFluid("fuel_tbnq", 0x0, true);
registerFluid("fuel_tbnq_depleted", 0x0, true);
registerFluid("fuel_tbnq_flouride", 0x0, true);
registerFluid("fuel_tbnq_flouride_depleted", 0x0, true);
registerFluid("fuel_tbnq_flibe", 0x0, true);
registerFluid("fuel_tbnq_flibe_depleted", 0x0, true);
registerBlock("duranium_281_block", 2, "pickaxe", -1, <soundtype:stone>);
registerItem("duranium_281", "RARE");
registerItem("duranium_281_oxide", "RARE");
registerItem("duranium_281_tiny", "RARE");
registerItem("duranium_281_oxide_tiny", "RARE");
registerFluid("duranium_281", 0x0, true);
registerFluid("duranium_281_flouride", 0x0, true);
registerFluid("duranium_281_flibe", 0x0, true);
registerIngot("darmstadtium", "RARE", 0x666666);
registerItem("medal_fragment", "RARE");
registerItem("tough_nugget", "COMMON");
registerItem("hard_carbon_nugget", "COMMON");
registerItem("boron_nitride_nugget", "COMMON");

registerItem("industrial_diamond", "UNCOMMON");
registerItem("pure_parchment", "EPIC"); // {"Quark:RuneColor": 0, "Quark:RuneAttached": 1b}

// function buildCoral(prefix as string, type as string) {
//     var suffix = "_" ~ type;
//     if (type == "") {
//         suffix = "";
//     }
//     var coral = VanillaFactory.createBlock(prefix ~ "_coral" ~ suffix, <blockmaterial:coral>);
//     if (type == "block") {
//         coral.setBlockHardness(1.5);
//     } else {
//         coral.setBlockHardness(0);
//         coral.setPassable(true);
//         coral.setFullBlock(false);
//         coral.setTranslucent(true);
//         coral.setEntitySpawnable(false);
//         coral.setBlockLayer("TRANSLUCENT");
//     }
//     coral.setDropHandler(function(drops, world, position, state, fortune) {
//         drops.add(itemUtils.getItem("contenttweaker:dead_" ~ state.block.definition.id));
//         return;
//     });
//     if (type == "") {
//         coral.setAxisAlignedBB(
//             AxisAlignedBB.create(2.0/16.0, 0.0/16.0, 2.0/16.0, 14.0/16.0, 13.0/16.0, 14.0/16.0)
//         );
//     } else if (type == "fan") {
//         coral.setAxisAlignedBB(
//             AxisAlignedBB.create(0.0/16.0, 7.0/16.0, 0.0/16.0, 16.0/16.0, 8.0/16.0, 16.0/16.0)
//         );
//     }
//     coral.setBlockSoundType(<soundtype:field_185859_l>);
// }

// val materialHOPGraphite = mods.contenttweaker.tconstruct.MaterialBuilder.create("HOPGraphite");
// materialHOPGraphite.color = 0x000000;
// materialHOPGraphite.craftable = true;
// materialHOPGraphite.addItem(<item:immersiveengineering:material:19>, 1, 144);
// materialHOPGraphite.addItem(<item:immersiveengineering:graphite_electrode>, 1, 576);
// materialHOPGraphite.representativeItem = <item:immersiveengineering:graphite_electrode>;
// materialHOPGraphite.addArrowShaftMaterialStats(2.0f, 5);
// materialHOPGraphite.addMaterialTrait("fiery", "shaft");
// materialHOPGraphite.register();

// val materialBlizz = mods.contenttweaker.tconstruct.MaterialBuilder.create("blizz");
// materialBlizz.color = 0x54E7ED;
// materialBlizz.craftable = true;
// materialBlizz.addItem(<item:thermalfoundation:material:2048>, 1, 72);
// materialBlizz.representativeItem = <item:thermalfoundation:material:2048>;
// materialBlizz.addArrowShaftMaterialStats(0.8f, 3);
// materialBlizz.addMaterialTrait("freezing", "shaft");
// materialBlizz.register();
// val materialBlitz = mods.contenttweaker.tconstruct.MaterialBuilder.create("blitz");
// materialBlitz.color = 0xD1DD4E;
// materialBlitz.craftable = true;
// materialBlitz.addItem(<item:thermalfoundation:material:2050>, 1, 72);
// materialBlitz.representativeItem = <item:thermalfoundation:material:2050>;
// materialBlitz.addArrowShaftMaterialStats(0.8f, 3);
// materialBlitz.addMaterialTrait("lightweight", "shaft");
// materialBlitz.register();
// val materialBasalz = mods.contenttweaker.tconstruct.MaterialBuilder.create("basalz");
// materialBasalz.color = 0x5F544D;
// materialBasalz.craftable = true;
// materialBasalz.addItem(<item:thermalfoundation:material:2052>, 1, 72);
// materialBasalz.representativeItem = <item:thermalfoundation:material:2052>;
// materialBasalz.addArrowShaftMaterialStats(0.8f, 3);
// materialBasalz.addMaterialTrait("ecological", "shaft");
// materialBasalz.register();

// val materialFluxString = mods.contenttweaker.tconstruct.MaterialBuilder.create("fluxstring");
// materialFluxString.color = 0xD5BDBD;
// materialFluxString.craftable = true;
// materialFluxString.addItem(<item:redstonerepository:material:8>, 1, 144);
// materialFluxString.representativeItem = <item:redstonerepository:material:8>;
// materialFluxString.addBowStringMaterialStats(1.25f);
// materialFluxString.addMaterialTrait("energyeater", "bowstring");
// materialFluxString.register();
// val materialRedString = mods.contenttweaker.tconstruct.MaterialBuilder.create("redstring");
// materialRedString.color = 0xD61212;
// materialRedString.craftable = true;
// materialRedString.addItem(<item:botania:manaresource:12>, 1, 144);
// materialRedString.representativeItem = <item:botania:manaresource:12>;
// materialRedString.addBowStringMaterialStats(1.5f);
// materialRedString.addMaterialTrait("manaeater", "bowstring");
// materialRedString.register();
// val materialMysticalString = mods.contenttweaker.tconstruct.MaterialBuilder.create("mysticalstring");
// materialMysticalString.color = 0xB8E0E0;
// materialMysticalString.craftable = true;
// materialMysticalString.addItem(<item:mysticalagriculture:crafting:23>, 1, 144);
// materialMysticalString.representativeItem = <item:mysticalagriculture:crafting:23>;
// materialMysticalString.addBowStringMaterialStats(1.1f);
// materialMysticalString.addMaterialTrait("established", "bowstring");
// materialMysticalString.register();
// val materialManaString = mods.contenttweaker.tconstruct.MaterialBuilder.create("manastring");
// materialManaString.color = 0xD2FFF4;
// materialManaString.craftable = true;
// materialManaString.addItem(<item:botania:manaresource:16>, 1, 144);
// materialManaString.representativeItem = <item:botania:manaresource:16>;
// materialManaString.addBowStringMaterialStats(1.2f);
// materialManaString.addMaterialTrait("manarepair", "bowstring");
// materialManaString.register();

// val materialMysticalFeather = mods.contenttweaker.tconstruct.MaterialBuilder.create("mysticalfeather");
// materialMysticalFeather.color = 0xD1FFFF;
// materialMysticalFeather.craftable = true;
// materialMysticalFeather.addItem(<item:mysticalagriculture:crafting:24>, 1, 144);
// materialMysticalFeather.representativeItem = <item:mysticalagriculture:crafting:24>;
// materialMysticalFeather.addFletchingMaterialStats(1.5f, 1.2f);
// materialMysticalFeather.addMaterialTrait("established", "fletching");
// materialMysticalFeather.register();
// val materialJingWeiFeather = mods.contenttweaker.tconstruct.MaterialBuilder.create("jingweifeather");
// materialJingWeiFeather.color = 0xFB3F29;
// materialJingWeiFeather.craftable = true;
// materialJingWeiFeather.addItem(<item:extrabotany:jingweifeather>, 1, 144);
// materialJingWeiFeather.representativeItem = <item:extrabotany:jingweifeather>;
// materialJingWeiFeather.addFletchingMaterialStats(9.99f, 99.99f);
// materialJingWeiFeather.addMaterialTrait("lightboost", "fletching");
// materialJingWeiFeather.register();

// val materialPhotonium = mods.contenttweaker.tconstruct.MaterialBuilder.create("photonium");
// materialPhotonium.color = 0xFDFDFD;
// materialPhotonium.craftable = true;
// materialPhotonium.addItem(<item:extrabotany:material:8>, 1, 144);
// materialPhotonium.addItem(<item:extrabotany:blockphotonium>, 1, 1296);
// materialPhotonium.representativeItem = <item:tconstruct:shard>.withTag({Material: "photonium"});
// materialPhotonium.addHeadMaterialStats(300, 3.0f, 3.5f, 3);
// materialPhotonium.addHandleMaterialStats(1.3f, 90);
// materialPhotonium.addExtraMaterialStats(35);
// materialPhotonium.addBowMaterialStats(1.5f, 1.25f, 7.5f);
// materialPhotonium.addArrowShaftMaterialStats(1.8, 2);
// materialPhotonium.addMaterialTrait("manarepair", null);
// materialPhotonium.addMaterialTrait("lightboost", null);
// materialPhotonium.addMaterialTrait("holy", null);
// materialPhotonium.register();

// val materialGaiasteel = mods.contenttweaker.tconstruct.MaterialBuilder.create("gaiasteel");
// materialGaiasteel.color = 0xA03537;
// materialGaiasteel.craftable = true;
// materialGaiasteel.addItem(<item:botanicadds:gaiasteel_ingot>, 1, 144);
// materialGaiasteel.representativeItem = <item:botanicadds:gaiasteel_ingot>;
// materialGaiasteel.addHeadMaterialStats(1200, 12.81f, 10.26f, 5);
// materialGaiasteel.addHandleMaterialStats(1.3f, 163);
// materialGaiasteel.addExtraMaterialStats(90);
// materialGaiasteel.addMaterialTrait("alien", null);
// materialGaiasteel.addMaterialTrait("manaeater", null);
// materialGaiasteel.addMaterialTrait("manarepair", null);
// materialGaiasteel.register();

// var purestGold = VanillaFactory.createFluid("purestgold", Color.fromHex("FFF255"));
// purestGold.temperature = 9999;
// purestGold.register();

// print("Initializing moltenDiamond");
// var moltenDiamond = VanillaFactory.createFluid("diamond", Color.fromHex("4AEDD1"));
// moltenDiamond.temperature = 866;
// moltenDiamond.register();