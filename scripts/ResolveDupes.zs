#priority 32767

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;

// adding hoe as a thing
<minecraft:wooden_hoe>.definition.setHarvestLevel("hoe", "0");
<minecraft:stone_hoe>.definition.setHarvestLevel("hoe", "1");
<minecraft:iron_hoe>.definition.setHarvestLevel("hoe", "2");
<minecraft:diamond_hoe>.definition.setHarvestLevel("hoe", "3");
<minecraft:golden_hoe>.definition.setHarvestLevel("hoe", "0");
<actuallyadditions:item_hoe_emerald>.definition.setHarvestLevel("hoe", "3");
<actuallyadditions:item_hoe_obsidian>.definition.setHarvestLevel("hoe", "3");
<actuallyadditions:item_hoe_crystal_red>.definition.setHarvestLevel("hoe", "2");
<actuallyadditions:item_hoe_crystal_blue>.definition.setHarvestLevel("hoe", "2");
<actuallyadditions:item_hoe_crystal_light_blue>.definition.setHarvestLevel("hoe", "3");
<actuallyadditions:item_hoe_crystal_black>.definition.setHarvestLevel("hoe", "2");
<actuallyadditions:item_hoe_crystal_green>.definition.setHarvestLevel("hoe", "4");
<actuallyadditions:item_hoe_crystal_white>.definition.setHarvestLevel("hoe", "2");
<bewitchment:silver_hoe>.definition.setHarvestLevel("hoe", "1");
<bewitchment:cold_iron_hoe>.definition.setHarvestLevel("hoe", "2");
<draconicevolution:draconic_hoe>.definition.setHarvestLevel("hoe", "10");
<embers:hoe_dawnstone>.definition.setHarvestLevel("hoe", "2");
<flintmod:hoe_flint>.definition.setHarvestLevel("hoe", "0");
<futuremc:netherite_hoe>.definition.setHarvestLevel("hoe", "4");
<immersiveengineering:hoe_steel>.definition.setHarvestLevel("hoe", "2");
<mysticalagriculture:inferium_hoe>.definition.setHarvestLevel("hoe", "2");
<mysticalagriculture:prudentium_hoe>.definition.setHarvestLevel("hoe", "2");
<mysticalagriculture:intermedium_hoe>.definition.setHarvestLevel("hoe", "3");
<mysticalagriculture:superium_hoe>.definition.setHarvestLevel("hoe", "4");
<mysticalagriculture:supremium_hoe>.definition.setHarvestLevel("hoe", "5");
<mysticaladaptations:insanium_hoe>.definition.setHarvestLevel("hoe", "6");
<thaumcraft:thaumium_hoe>.definition.setHarvestLevel("hoe", "3");
<thaumcraft:void_hoe>.definition.setHarvestLevel("hoe", "4");
<thaumcraft:elemental_hoe>.definition.setHarvestLevel("hoe", "3");
<thaumadditions:void_elemental_hoe>.definition.setHarvestLevel("hoe", "4");
<tconstruct:mattock>.definition.setHarvestLevel("hoe", "2"); // someone change this with material system...
<thermalfoundation:tool.hoe_copper>.definition.setHarvestLevel("hoe", "1");
<thermalfoundation:tool.hoe_tin>.definition.setHarvestLevel("hoe", "1");
<thermalfoundation:tool.hoe_silver>.definition.setHarvestLevel("hoe", "1");
<thermalfoundation:tool.hoe_lead>.definition.setHarvestLevel("hoe", "1");
<thermalfoundation:tool.hoe_aluminum>.definition.setHarvestLevel("hoe", "1");
<thermalfoundation:tool.hoe_nickel>.definition.setHarvestLevel("hoe", "2");
<thermalfoundation:tool.hoe_platinum>.definition.setHarvestLevel("hoe", "4");
<thermalfoundation:tool.hoe_steel>.definition.setHarvestLevel("hoe", "2");
<thermalfoundation:tool.hoe_electrum>.definition.setHarvestLevel("hoe", "0");
<thermalfoundation:tool.hoe_invar>.definition.setHarvestLevel("hoe", "2");
<thermalfoundation:tool.hoe_bronze>.definition.setHarvestLevel("hoe", "2");
<thermalfoundation:tool.hoe_constantan>.definition.setHarvestLevel("hoe", "2");

val wood = [
    [<minecraft:log>, <quark:bark>, <minecraft:planks>, <minecraft:wooden_slab>, <minecraft:oak_stairs>],
    [<minecraft:log:1>, <quark:bark:1>, <minecraft:planks:1>, <minecraft:wooden_slab:1>, <minecraft:spruce_stairs>],
    [<minecraft:log:2>, <quark:bark:2>, <minecraft:planks:2>, <minecraft:wooden_slab:2>, <minecraft:birch_stairs>],
    [<minecraft:log:3>, <quark:bark:3>, <minecraft:planks:3>, <minecraft:wooden_slab:3>, <minecraft:jungle_stairs>],
    [<minecraft:log2>, <quark:bark:4>, <minecraft:planks:4>, <minecraft:wooden_slab:4>, <minecraft:acacia_stairs>],
    [<minecraft:log2:1>, <quark:bark:5>, <minecraft:planks:5>, <minecraft:wooden_slab:5>, <minecraft:dark_oak_stairs>],
    [<futuremc:stripped_oak_log>, <futuremc:stripped_oak_wood>, <minecraft:planks>, <minecraft:wooden_slab>, <minecraft:oak_stairs>],
    [<futuremc:stripped_spruce_log>, <futuremc:stripped_spruce_wood>, <minecraft:planks:1>, <minecraft:wooden_slab:1>, <minecraft:spruce_stairs>],
    [<futuremc:stripped_birch_log>, <futuremc:stripped_birch_wood>, <minecraft:planks:2>, <minecraft:wooden_slab:2>, <minecraft:birch_stairs>],
    [<futuremc:stripped_jungle_log>, <futuremc:stripped_jungle_wood>, <minecraft:planks:3>, <minecraft:wooden_slab:3>, <minecraft:jungle_stairs>],
    [<futuremc:stripped_acacia_log>, <futuremc:stripped_acacia_wood>, <minecraft:planks:4>, <minecraft:wooden_slab:4>, <minecraft:acacia_stairs>],
    [<futuremc:stripped_dark_oak_log>, <futuremc:stripped_dark_oak_wood>, <minecraft:planks:5>, <minecraft:wooden_slab:5>, <minecraft:dark_oak_stairs>],
    [<netherbackport:crimsonstem>, <netherbackport:crimsonhyphae>, <netherbackport:crimsonplanks>, <netherbackport:crimsonplanksslab>, <netherbackport:crimsonplanksstairs>],
    [<netherbackport:warpedstem>, <netherbackport:warpedhyphae>, <netherbackport:warpedplanks>, <netherbackport:warpedplanksslab>, <netherbackport:warpedplanksstairs>],
    [<botania:livingwood>, null, <botania:livingwood:1>, <botania:livingwood1slab>, <botania:livingwood1stairs>],
    [<botania:dreamwood>, null, <botania:dreamwood:1>, <botania:dreamwood1slab>, <botania:dreamwood1stairs>],
    [<botanicadds:elvenwood_log>, <contenttweaker:elvenwood_bark>, <contenttweaker:elvenwood_planks>, null, null],
    [<bewitchment:cypress_wood>, <contenttweaker:cypress_bark>, <bewitchment:cypress_planks>, <bewitchment:cypress_wood_slab>, <bewitchment:cypress_wood_stairs>],
    [<bewitchment:elder_wood>, <contenttweaker:elder_bark>, <bewitchment:elder_planks>, <bewitchment:elder_wood_slab>, <bewitchment:elder_wood_stairs>],
    [<bewitchment:juniper_wood>, <contenttweaker:juniper_bark>, <bewitchment:juniper_planks>, <bewitchment:juniper_wood_slab>, <bewitchment:juniper_wood_stairs>],
    [<bewitchment:dragons_blood_wood>, <contenttweaker:dragons_blood_bark>, <bewitchment:dragons_blood_planks>, null, null],
    [<thaumcraft:log_silverwood>, <contenttweaker:silverwood_bark>, <thaumcraft:plank_silverwood>, <thaumcraft:slab_silverwood>, <thaumcraft:stairs_silverwood>],
    [<thaumcraft:log_greatwood>, <contenttweaker:greatwood_bark>, <thaumcraft:plank_greatwood>, <thaumcraft:slab_greatwood>, <thaumcraft:stairs_greatwood>],
    [<thaumcraft:taint_log>, null, <thaumadditions:taintwood_planks>, null, null],
    [<extrautils2:ironwood_log>, <contenttweaker:ironwood_bark>, <extrautils2:ironwood_planks>, null, null],
    [<extrautils2:ironwood_log:1>, <contenttweaker:ironwood_bark_1>, <extrautils2:ironwood_planks:1>, null, null],
    [<extrautils2:decorativesolidwood:1>, null, <extrautils2:decorativesolidwood>, null, null],
    [<pvj:log_redwood>, <pvj:redwood_bark>, <pvj:planks_redwood>, <pvj:redwood_slab>, <pvj:redwood_stairs>], // oh boy here we go
    [<pvj:log_willow>, <contenttweaker:willow_bark>, <pvj:planks_willow>, <pvj:willow_slab>, <pvj:willow_stairs>],
    [<pvj:log_mangrove>, <contenttweaker:mangrove_bark>, <pvj:planks_mangrove>, <pvj:mangrove_slab>, <pvj:mangrove_stairs>],
    [<pvj:log_palm>, <contenttweaker:palm_bark>, <pvj:planks_palm>, <pvj:palm_slab>, <pvj:palm_stairs>],
    [<pvj:log_fir>, <contenttweaker:fir_bark>, <pvj:planks_fir>, <pvj:fir_slab>, <pvj:fir_stairs>],
    [<pvj:log_pine>, <contenttweaker:pine_bark>, <pvj:planks_pine>, <pvj:pine_slab>, <pvj:pine_stairs>],
    [<pvj:log_aspen>, <contenttweaker:aspen_bark>, <pvj:planks_aspen>, <pvj:aspen_slab>, <pvj:aspen_stairs>],
    [<pvj:log_maple>, <contenttweaker:maple_bark>, <pvj:planks_maple>, <pvj:maple_slab>, <pvj:maple_stairs>],
    [<pvj:log_baobab>, <contenttweaker:baobab_bark>, <pvj:planks_baobab>, <pvj:baobab_slab>, <pvj:baobab_stairs>],
    [<pvj:log_cottonwood>, <contenttweaker:cottonwood_bark>, <pvj:planks_cottonwood>, <pvj:cottonwood_slab>, <pvj:cottonwood_stairs>],
    [<pvj:log_juniper>, <contenttweaker:juniper_bark_1>, <pvj:planks_juniper>, <pvj:juniper_slab>, <pvj:juniper_stairs>],
    [<pvj:log_cherry_blossom>, <contenttweaker:cherry_blossom_bark>, <pvj:planks_cherry_blossom>, <pvj:cherry_blossom_slab>, <pvj:cherry_blossom_stairs>],
    [<pvj:log_jacaranda>, <contenttweaker:jacaranda_bark>, <pvj:planks_jacaranda>, <pvj:jacaranda_slab>, <pvj:jacaranda_stairs>],
    [<rustic:log>, <contenttweaker:olive_bark>, <rustic:planks>, <rustic:olive_slab_item>, <rustic:stairs_olive>],
    [<rustic:log:1>, <contenttweaker:ironwood_bark_2>, <rustic:planks:1>, <rustic:ironwood_slab_item>, <rustic:stairs_ironwood>],
    [<bloodarsenal:blood_infused_wooden_log>, <contenttweaker:blood_infused_bark>, <bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:blood_infused_wooden_slab>, <bloodarsenal:blood_infused_wooden_stairs>]
] as IItemStack[][];
for k in wood {
    // always assume LOG and PLANK exist
    oreDict.logWood.add(k[0]);
    oreDict.plankWood.add(k[2]);
    // BARK recipes
    if (!isNull(k[1])) {
        oreDict.logWood.add(k[1]);
        oreDict.barkWood.add(k[1]);
        recipes.removeShapeless(k[1], [k[0]], true);
        recipes.removeShaped(k[1] * 9, [[k[0], k[0], k[0]], [k[0], k[0], k[0]], [k[0], k[0], k[0]]]);
        recipes.removeShapeless(k[0], [k[1]], true);
        recipes.removeShapeless(k[2], [k[1]], true);
        recipes.addShaped("log_to_bark_" ~ k[0].name, k[1] * 3, [[k[0], k[0]], [k[0], k[0]]]);
        recipes.addShapeless("bark_to_plank_" ~ k[0].name, k[2] * 4, [k[1]]);
    }
    // SLAB recipes
    if (!isNull(k[3])) {
        oreDict.slabWood.add(k[3]);
        recipes.remove(k[3]);
        recipes.addShaped("slab_recipes_" ~ k[3].name, k[3] * 6, [[k[2], k[2], k[2]]]);
        recipes.addShaped("plank_recipes_" ~ k[3].name, k[2], [[k[3]], [k[3]]]);
        // STAIRS recipes
        if (!isNull(k[4])) {
            // since this is wood, assuming NO CHISELED VARIANT, if there is, change it below
            oreDict.stairWood.add(k[4]);
            recipes.remove(k[4]);
            recipes.addShapedMirrored("stair_recipes_" ~ k[2].name, k[4] * 8, [[k[2], null, null], [k[2], k[2], null], [k[2], k[2], k[2]]]);
            recipes.addShapedMirrored("stair_recipes_" ~ k[3].name, k[4] * 4, [[k[3], null, null], [k[3], k[3], null], [k[3], k[3], k[3]]]);
            recipes.addShaped("plank_recipes_" ~ k[4].name, k[2] * 3, [[k[4]], [k[4]], [k[4]], [k[4]]]);
        }
    }
}
oreDict.plankWood.add(<embers:sealed_planks>);
oreDict.slabWood.add(<soot:sealed_planks_slab>);
oreDict.stairWood.add(<soot:sealed_planks_stairs>);
oreDict.plankWood.add(<immersiveengineering:treated_wood>);
oreDict.slabWood.add(<immersiveengineering:treated_wood_slab>);
oreDict.stairWood.add(<immersiveengineering:treated_wood_stairs0>);
oreDict.plankWood.add(<immersiveengineering:treated_wood:1>);
oreDict.slabWood.add(<immersiveengineering:treated_wood_slab:1>);
oreDict.stairWood.add(<immersiveengineering:treated_wood_stairs1>);
oreDict.plankWood.add(<immersiveengineering:treated_wood:2>);
oreDict.slabWood.add(<immersiveengineering:treated_wood_slab:2>);
oreDict.stairWood.add(<immersiveengineering:treated_wood_stairs2>);

oreDict.logWood.add(<netherbackport:crimsonstem>, <netherbackport:warpedstem>, <netherbackport:crimsonhyphae>, <netherbackport:warpedhyphae>, <netherbackport:strippedcrimsonstem>, <netherbackport:strippedwarpedstem>, <netherbackport:strippedcrimsonhyphae>, <netherbackport:strippedwarpedhyphae>);
oreDict.logWoodStripped.add(<netherbackport:strippedcrimsonstem>, <netherbackport:strippedwarpedstem>, <netherbackport:strippedcrimsonhyphae>, <netherbackport:strippedwarpedhyphae>);
oreDict.plankWood.add(<netherbackport:crimsonplanks>, <netherbackport:warpedplanks>);
oreDict.slabWood.add(<netherbackport:crimsonplanksslab>, <netherbackport:warpedplanksslab>);
oreDict.plankWood.add(<netherbackport:crimsonplanksstairs>, <netherbackport:warpedplanksstairs>);
oreDict.stoneBasalt.add(<netherbackport:basalt>, <pvj:basalt>);
oreDict.stoneLimestone.add(<pvj:limestone>);
oreDict.stoneMarble.add(<pvj:marble>);
oreDict.stoneSiltstone.add(<pvj:siltstone>);
oreDict.stoneAdobe.add(<pvj:adobe>);
oreDict.cobblestone.add(<netherbackport:blackstone>);
oreDict.materialStoneTool.add(<netherbackport:blackstone>);
oreDict.stone.add(<netherbackport:polishedblackstone>);

recipes.addShapeless("futuremc_blueice_to_packedice", <futuremc:blue_ice>, [<minecraft:packed_ice>]);
recipes.remove(<minecraft:pumpkin_seeds>);
recipes.addShapeless("futuremc_carving_pumpkin", <contenttweaker:carved_pumpkin>, [<minecraft:pumpkin>.transformReplace(<minecraft:pumpkin_seeds> * 4), <minecraft:shears>.transformDamage()]);
oreDict.listAllVeggie.add(<contenttweaker:carved_pumpkin>);
oreDict.cropPumpkin.add(<contenttweaker:carved_pumpkin>);
recipes.remove(<minecraft:lit_pumpkin>);
recipes.remove(<botania:felpumpkin>);
recipes.addShaped("jackolantern_crafting", <minecraft:lit_pumpkin>, [[<contenttweaker:carved_pumpkin>], [<ore:torch>]]);
recipes.addShaped("felpumpin_crafting", <botania:felpumpkin>, [[null, <ore:string>, null], [<ore:bone>, <contenttweaker:carved_pumpkin>, <minecraft:rotten_flesh>], [null, <ore:gunpowder>, null]]);
recipes.remove(<futuremc:prismarine_wall>);
oreDict.shellNautilus.add(<conduit:nautilus_shell>, <futuremc:nautilus_shell>);
recipes.addShapeless("bamboo_hc_to_futuremc", <futuremc:bamboo>, [<harvestcraft:bambooshootitem>]);
recipes.addShapeless("bamboo_futuremc_to_hc", <harvestcraft:bambooshootitem>, [<futuremc:bamboo>]);
recipes.remove(<futuremc:barrel>);
oreDict.barrel.add(<futuremc:barrel>);
for item in oreDict.plankWood.items {
    var slab = recipes.craft([[item, item, item]]);
    if (!isNull(slab)) {
        if (item.definition.owner != "minecraft") {
            slab = slab * 1;
            recipes.addShaped("futuremc_barrel_" ~ item.name, <futuremc:barrel>, [[item, slab, item], [item, null, item], [item, slab, item]]);
        }
    }
}
oreDict.listAllberry.add(<bewitchment:elderberries>, <bewitchment:juniper_berries>);
oreDict.listAllveggie.add(<bewitchment:white_sage>, <bewitchment:garlic>);
oreDict.listAllmushroom.add(<bewitchment:blue_ink_cap>, <netherbackport:warpedfungi>, <netherbackport:crimsonfungi>, <pvj:orange_mushroom>, <pvj:glowcap>, <pvj:deathcap>, <pvj:waxcap>, <rustic:mooncap_mushroom>);
oreDict.blockComposter.add(<charm:composter>, <futuremc:composter>);
recipes.remove(<charm:composter>);
for item in oreDict.treeSapling.items {
    mods.futuremc.Composter.addValidItem(item, 30);
}
mods.futuremc.Composter.addValidItem(<thaumadditions:cake>, 100);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_food:8>, 100);
for item in itemUtils.getItemsByRegexRegistryName(".*cakeitem") {
    mods.futuremc.Composter.addValidItem(item, 100);
}
for item in itemUtils.getItemsByRegexRegistryName(".*pieitem") {
    mods.futuremc.Composter.addValidItem(item, 100);
}
mods.futuremc.Composter.addValidItem(<thaumicwonders:vishroom_spore>, 30);
mods.futuremc.Composter.addValidItem(<contenttweaker:carved_pumpkin>, 65);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_food:12>, 85);
for item in itemUtils.getItemsByRegexRegistryName(".*cookie") {
    if (item.name != <cfm:cookie_jar>.name) {
        mods.futuremc.Composter.addValidItem(item, 85);
    }
}
mods.futuremc.Composter.addValidItem(<quark:thatch>, 85);
mods.futuremc.Composter.addValidItem(<quark:thatch_slab>, 65);
mods.futuremc.Composter.addValidItem(<quark:thatch_stairs>, 65);
mods.futuremc.Composter.addValidItem(<pvj:small_cactus>, 30);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_canola_seed>, 30);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_coffee_seed>, 30);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_flax_seed>, 30);
mods.futuremc.Composter.addValidItem(<actuallyadditions:item_rice_seed>, 30);
mods.futuremc.Composter.addValidItem(<quark:glowshroom_block>, 85);
for item in itemUtils.getItemsByRegexRegistryName("bewitchment.*flower.*") {
    mods.futuremc.Composter.addValidItem(item, 65);
}
mods.futuremc.Composter.addValidItem(<botania_tweaks:compressed_tiny_potato_8>, 100);
for item in oreDict.listAllseed.items {
    mods.futuremc.Composter.addValidItem(item, 30);
}
for item in oreDict.listAllveggie.items {
    mods.futuremc.Composter.addValidItem(item, 65);
}
for item in oreDict.listAllmushroom.items {
    mods.futuremc.Composter.addValidItem(item, 65);
}
for item in oreDict.listAllfruit.items {
    mods.futuremc.Composter.addValidItem(item, 65);
}
for item in oreDict.listAllberry.items {
    mods.futuremc.Composter.addValidItem(item, 30);
}
for item in oreDict.treeLeaves.items {
    mods.futuremc.Composter.addValidItem(item, 30);
}
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:1>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:2>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:3>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:4>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:5>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:6>, 30);
mods.futuremc.Composter.addValidItem(<quark:leaf_carpet:7>, 30);
for item in itemUtils.getItemsByRegexRegistryName("pvj:fallenleaves.*") {
    mods.futuremc.Composter.addValidItem(item, 30);
}
for item in itemUtils.getItemsByRegexRegistryName("quark:root.*") {
    mods.futuremc.Composter.addValidItem(item, 65);
}
mods.futuremc.Composter.addValidItem(<netherbackport:twistingvines>, 50);
mods.futuremc.Composter.addValidItem(<netherbackport:weepingvines>, 50);
mods.futuremc.Composter.addValidItem(<bewitchment:spanish_moss>, 50);
mods.futuremc.Composter.addValidItem(<bewitchment:wormwood>, 50);
mods.futuremc.Composter.addValidItem(<bewitchment:embergrass>, 30);
mods.futuremc.Composter.addValidItem(<bewitchment:torchwood>, 30);
mods.futuremc.Composter.addValidItem(<bewitchment:mandrake_root>, 65);
mods.futuremc.Composter.addValidItem(<bewitchment:hellebore>, 65);
mods.futuremc.Composter.addValidItem(<bewitchment:aconitum>, 65);
mods.futuremc.Composter.addValidItem(<bewitchment:belladonna>, 65);
mods.futuremc.Composter.addValidItem(<pvj:flower_patch>, 65);
mods.futuremc.Composter.addValidItem(<actuallyadditions:block_black_lotus>, 65);
mods.futuremc.Composter.addValidItem(<backportedflora:kelp>, 30);
mods.futuremc.Composter.addValidItem(<backportedflora:dried_kelp>, 30);
mods.futuremc.Composter.addValidItem(<backportedflora:seagrass>, 30);
mods.futuremc.Composter.addValidItem(<backportedflora:dried_kelp_block>, 50);
mods.futuremc.Composter.addValidItem(<extrautils2:enderlilly>, 50);
mods.futuremc.Composter.addValidItem(<netherbackport:crimsonroots>, 50);
mods.futuremc.Composter.addValidItem(<netherbackport:warpedroots>, 50);
mods.futuremc.Composter.addValidItem(<netherbackport:nethersprouts>, 30);
oreDict.blockLanternIron.add(<charm:iron_lantern>, <futuremc:lantern>);
recipes.remove(<charm:iron_lantern>);
for item in itemUtils.getItemsByRegexRegistryName("futuremc:.*_wall") {
    recipes.remove(item);
}
mods.futuremc.Bee.addFlower(<blockstate:botania:flower>);
mods.futuremc.Bee.addFlower(<blockstate:botania:shinyflower>);
mods.futuremc.Bee.addFlower(<blockstate:botania:miniisland>);
mods.futuremc.Bee.addFlower(<blockstate:botania:doubleflower1>);
mods.futuremc.Bee.addFlower(<blockstate:botania:doubleflower2>);
mods.futuremc.Bee.addFlower(<blockstate:botania:specialflower>);
mods.futuremc.Bee.addFlower(<blockstate:backportedflora:wither_rose>);
for item in itemUtils.getItemsByRegexRegistryName("bewitchment.*flower.*") {
    mods.futuremc.Bee.addFlower((item as IBlock).definition.defaultState);
}
mods.futuremc.Bee.addFlower(<blockstate:bewitchment:crop_hellebore>);
mods.futuremc.Bee.addFlower(<blockstate:bewitchment:crop_aconitum>);
mods.futuremc.Bee.addFlower(<blockstate:bewitchment:crop_belladonna>);
mods.futuremc.Bee.addFlower(<blockstate:actuallyadditions:block_black_lotus>);
mods.futuremc.Bee.addFlower(<blockstate:extrautils2:enderlilly>);
mods.futuremc.Bee.addFlower(<blockstate:pvj:flower_patch>);
for item in itemUtils.getItemsByRegexRegistryName("futuremc:.*_trapdoor") {
    recipes.remove(item);
}
for item in itemUtils.getItemsByRegexRegistryName("futuremc:.*_wall") {
    recipes.remove(item);
}
for item in itemUtils.getItemsByRegexRegistryName("netherbackport:netherite.*") {
    recipes.remove(item);
}
recipes.remove(<netherbackport:chain>);
recipes.remove(<netherbackport:lantern>);
recipes.remove(<netherbackport:hanginglantern>);
recipes.remove(<netherbackport:soullantern>);
recipes.remove(<netherbackport:hangingsoullantern>);
recipes.remove(<netherbackport:soultorch>);
recipes.remove(<netherbackport:pigstep>);
recipes.remove(<netherbackport:ancientdebris>);
recipes.remove(<netherbackport:soulsoilandscrap>);
recipes.addShapedMirrored("soul_soil_and_scrap_recipe", <netherbackport:soulsoilandscrap>, [[null, <netherbackport:soulsoil>], [<futuremc:netherite_scrap>, null]]);
recipes.addShaped("soul_torch_recipe", <futuremc:soul_fire_torch> * 4, [[<ore:coal> | <ore:charcoal>], [<ore:stickWood>], [<netherbackport:soulsoil>]]);
recipes.addShaped("soul_lantern_recipe", <futuremc:soul_fire_lantern>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <futuremc:soul_fire_torch>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);

function addChisel(group as string, items as IItemStack[]) {
    for item in items {
        mods.chisel.Carving.addVariation(group, item);
        for another in items {
            if (item.name != another.name) {
                mods.futuremc.Stonecutter.addOutput(item, another);
            }
        }
    }
}

addChisel("cobblestone", [<pvj:cobblestone_brick>, <quark:sturdy_stone>]);
addChisel("basalt", [<netherbackport:basalt>, <netherbackport:polishedbasalt>]);
recipes.remove(<quark:basalt>);
recipes.addShaped("polished_basalt_2", <quark:basalt:1> * 4, [[<quark:basalt>, <quark:basalt>], [<quark:basalt>, <quark:basalt>]]);
mods.chisel.Carving.addGroup("blackstone");
addChisel("blackstone", [<netherbackport:blackstone>, <netherbackport:polishedblackstone>, <netherbackport:polishedblackstonebricks>, <netherbackport:crackedpolishedblackstonebricks>, <netherbackport:chiseledpolishedblackstone>]);
addChisel("quartz", [<netherbackport:quartzbricks>, <futuremc:smooth_quartz>]);
addChisel("netherbrick", [<netherbackport:chiselednetherbricks>, <netherbackport:crackednetherbricks>]);
for item in itemUtils.getItemsByRegexRegistryName("futuremc:.*_wood") {
    recipes.remove(item);
}
mods.chisel.Carving.addGroup("sealed_planks");
addChisel("sealed_planks", [<embers:sealed_planks>, <soot:sealed_pillar>, <soot:sealed_tile>]);

oreDict.logJuniper.add(<bewitchment:juniper_wood>, <pvj:log_juniper>);
recipes.replaceAllOccurences(<bewitchment:juniper_wood>, <ore:logJuniper>);
recipes.replaceAllOccurences(<pvj:log_juniper>, <ore:logJuniper>);
addChisel("quark:stained_planks_0", [<quark:vertical_stained_planks:0>]);
addChisel("quark:stained_planks_1", [<quark:vertical_stained_planks:1>]);
addChisel("quark:stained_planks_2", [<quark:vertical_stained_planks:2>]);
addChisel("quark:stained_planks_3", [<quark:vertical_stained_planks:3>]);
addChisel("quark:stained_planks_4", [<quark:vertical_stained_planks:4>]);
addChisel("quark:stained_planks_5", [<quark:vertical_stained_planks:5>]);
addChisel("quark:stained_planks_6", [<quark:vertical_stained_planks:6>]);
addChisel("quark:stained_planks_7", [<quark:vertical_stained_planks:7>]);
addChisel("quark:stained_planks_8", [<quark:vertical_stained_planks:8>]);
addChisel("quark:stained_planks_9", [<quark:vertical_stained_planks:9>]);
addChisel("quark:stained_planks_10", [<quark:vertical_stained_planks:10>]);
addChisel("quark:stained_planks_11", [<quark:vertical_stained_planks:11>]);
addChisel("quark:stained_planks_12", [<quark:vertical_stained_planks:12>]);
addChisel("quark:stained_planks_13", [<quark:vertical_stained_planks:13>]);
addChisel("quark:stained_planks_14", [<quark:vertical_stained_planks:14>]);
addChisel("quark:stained_planks_15", [<quark:vertical_stained_planks:15>]);
addChisel("bricks", [<engineersdecor:clinker_brick_block>, <engineersdecor:clinker_brick_stained_block>, <engineersdecor:slag_brick_block>, <tconstruct:dried_clay:1>]);
recipes.remove(<embers:block_caminite_brick>);
recipes.addShapedMirrored("caminite_bricks", <embers:block_caminite_brick>, [[<embers:brick_caminite>, <embers:archaic_brick>], [<embers:archaic_brick>, <embers:brick_caminite>]]);
recipes.addShaped("oops_i_deleted_this", <embers:block_caminite_brick> * 4, [[<soot:caminite_tiles>, <soot:caminite_tiles>], [<soot:caminite_tiles>, <soot:caminite_tiles>]]);
recipes.remove(<soot:caminite_clay>);
recipes.addShaped("instead_i_gate_this_too", <soot:caminite_clay>, [[<embers:blend_caminite>, <embers:archaic_brick>], [<embers:archaic_brick>, <embers:blend_caminite>]]);
recipes.addShaped("caminite_tile", <soot:caminite_large_tile> * 4, [[<embers:block_caminite_brick>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <embers:block_caminite_brick>]]);
mods.chisel.Carving.addGroup("caminite");
addChisel("caminite", [<embers:block_caminite_brick>, <soot:caminite_large_tile>, <soot:caminite_tiles>]);
mods.chisel.Carving.addGroup("ashen");
addChisel("ashen", [<embers:ashen_brick>, <embers:ashen_stone>, <embers:ashen_tile>]);
mods.chisel.Carving.addGroup("archaic");
addChisel("archaic", [<embers:archaic_bricks>, <soot:archaic_big_bricks>, <embers:archaic_tile>]);
mods.chisel.Carving.addGroup("black_quartz");
addChisel("black_quartz", [<actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:1>, <actuallyadditions:block_misc>]);
recipes.remove(<actuallyadditions:block_misc>);
recipes.addShaped("black_quartz_pillar", <actuallyadditions:block_misc> * 2, [[<actuallyadditions:block_misc:2>], [<actuallyadditions:block_misc:2>]]);
mods.chisel.Carving.addGroup("sky_stone");
addChisel("sky_stone", [<appliedenergistics2:sky_stone_block>, <appliedenergistics2:sky_stone_brick>, <appliedenergistics2:sky_stone_small_brick>]);
mods.chisel.Carving.addGroup("infused_wood");
addChisel("infused_wood", [<astralsorcery:blockinfusedwood:1>, <astralsorcery:blockinfusedwood:2>, <astralsorcery:blockinfusedwood:3>, <astralsorcery:blockinfusedwood:4>, <astralsorcery:blockinfusedwood:5>]);
mods.chisel.Carving.addGroup("ritual_stone");
addChisel("ritual_stone", [<bloodmagic:ritual_stone>, <bloodmagic:ritual_stone:1>, <bloodmagic:ritual_stone:2>, <bloodmagic:ritual_stone:3>, <bloodmagic:ritual_stone:4>, <bloodmagic:ritual_stone:5>, <bloodmagic:ritual_stone:6>]);
mods.chisel.Carving.addGroup("bloodstone");
addChisel("bloodstone", [<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick:1>]);
mods.chisel.Carving.addGroup("wooden_path");
addChisel("wooden_path", [<bloodmagic:path>, <bloodmagic:path:1>]);
addChisel("stonebrick", [<bloodmagic:path:2>, <bloodmagic:path:3>, <bloodmagic:path:4>, <bloodmagic:path:5>, <futuremc:smooth_stone>]);
addChisel("obsidian", [<bloodmagic:path:6>, <bloodmagic:path:7>, <netherbackport:cryingobsidian>]);
mods.chisel.Carving.addGroup("demonstone_raw");
mods.chisel.Carving.addGroup("demonstone_corrosive");
mods.chisel.Carving.addGroup("demonstone_destructive");
mods.chisel.Carving.addGroup("demonstone_vengeful");
mods.chisel.Carving.addGroup("demonstone_steadfast");
addChisel("demonstone_raw", [<bloodmagic:demon_extras>, <bloodmagic:demon_extras:5>, <bloodmagic:demon_pillar_1>, <bloodmagic:demon_pillar_2>, <bloodmagic:demon_brick_1>, <bloodmagic:demon_brick_2>, <bloodmagic:demon_brick_2:5>, <bloodmagic:demon_brick_2:10>, <bloodmagic:demon_pillar_cap_1>, <bloodmagic:demon_light>]);
addChisel("demonstone_corrosive", [<bloodmagic:demon_extras:1>, <bloodmagic:demon_extras:6>, <bloodmagic:demon_pillar_1:1>, <bloodmagic:demon_pillar_2:1>, <bloodmagic:demon_brick_1:1>, <bloodmagic:demon_brick_2:1>, <bloodmagic:demon_brick_2:6>, <bloodmagic:demon_brick_2:11>, <bloodmagic:demon_pillar_cap_1:1>, <bloodmagic:demon_light:1>]);
addChisel("demonstone_destructive", [<bloodmagic:demon_extras:2>, <bloodmagic:demon_extras:7>, <bloodmagic:demon_pillar_1:2>, <bloodmagic:demon_pillar_2:2>, <bloodmagic:demon_brick_1:2>, <bloodmagic:demon_brick_2:2>, <bloodmagic:demon_brick_2:7>, <bloodmagic:demon_brick_2:12>, <bloodmagic:demon_pillar_cap_2>, <bloodmagic:demon_light:2>]);
addChisel("demonstone_vengeful", [<bloodmagic:demon_extras:3>, <bloodmagic:demon_extras:8>, <bloodmagic:demon_pillar_1:3>, <bloodmagic:demon_pillar_2:3>, <bloodmagic:demon_brick_1:3>, <bloodmagic:demon_brick_2:3>, <bloodmagic:demon_brick_2:8>, <bloodmagic:demon_brick_2:13>, <bloodmagic:demon_pillar_cap_2:1>, <bloodmagic:demon_light:3>]);
addChisel("demonstone_steadfast", [<bloodmagic:demon_extras:4>, <bloodmagic:demon_extras:9>, <bloodmagic:demon_pillar_1:4>, <bloodmagic:demon_pillar_2:4>, <bloodmagic:demon_brick_1:4>, <bloodmagic:demon_brick_2:4>, <bloodmagic:demon_brick_2:9>, <bloodmagic:demon_brick_2:14>, <bloodmagic:demon_pillar_cap_3>, <bloodmagic:demon_light:4>]);
mods.chisel.Carving.addGroup("ie_concrete");
addChisel("ie_concrete", [<engineersdecor:rebar_concrete>, <engineersdecor:rebar_concrete_tile>]);
mods.chisel.Carving.addGroup("ie_concrete_hard");
addChisel("ie_concrete_hard", [<engineersdecor:gas_concrete>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:6>]);
// mods.chisel.Carving.addGroup("litherite");
// addChisel("litherite", [<environmentaltech:litherite>, <environmentaltech:litherite_bricks>, <environmentaltech:litherite_paver>, <environmentaltech:litherite_tiles>]);
// mods.chisel.Carving.addGroup("erodium");
// addChisel("erodium", [<environmentaltech:erodium>, <environmentaltech:erodium_bricks>, <environmentaltech:erodium_paver>, <environmentaltech:erodium_tiles>]);
// mods.chisel.Carving.addGroup("kyronite");
// addChisel("kyronite", [<environmentaltech:kyronite>, <environmentaltech:kyronite_bricks>, <environmentaltech:kyronite_paver>, <environmentaltech:kyronite_tiles>]);
// mods.chisel.Carving.addGroup("pladium");
// addChisel("pladium", [<environmentaltech:pladium>, <environmentaltech:pladium_bricks>, <environmentaltech:pladium_paver>, <environmentaltech:pladium_tiles>]);
// mods.chisel.Carving.addGroup("ionite");
// addChisel("ionite", [<environmentaltech:ionite>, <environmentaltech:ionite_bricks>, <environmentaltech:ionite_paver>, <environmentaltech:ionite_tiles>]);
// mods.chisel.Carving.addGroup("aethium");
// addChisel("aethium", [<environmentaltech:aethium>, <environmentaltech:aethium_bricks>, <environmentaltech:aethium_paver>, <environmentaltech:aethium_tiles>]);
// mods.chisel.Carving.addGroup("lonsdaleite");
// addChisel("lonsdaleite", [<environmentaltech:lonsdaleite>, <environmentaltech:lonsdaleite_bricks>, <environmentaltech:lonsdaleite_paver>, <environmentaltech:lonsdaleite_tiles>]);
mods.chisel.Carving.addGroup("bedrock");
addChisel("bedrock", [<minecraft:bedrock>, <extrautils2:decorativebedrock>, <extrautils2:decorativebedrock:1>, <extrautils2:decorativebedrock:2>]);
furnace.addRecipe(<minecraft:bedrock>, <extrautils2:decorativebedrock:2>);
recipes.addShaped("bedrock_craft_1", <extrautils2:decorativebedrock> * 4, [[<minecraft:bedrock>, <minecraft:bedrock>], [<minecraft:bedrock>, <minecraft:bedrock>]]);
recipes.addShaped("bedrock_craft_2", <extrautils2:decorativebedrock:1> * 2, [[<minecraft:bedrock>], [<minecraft:bedrock>]]);
recipes.remove(<quark:polished_stone>);
recipes.removeByRecipeName("minecraft:stone_slab");
recipes.addShaped("stone_slab_normal", <netherbackport:stoneslab> * 6, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
mods.chisel.Carving.addGroup("soulstone");
addChisel("soulstone", [<mysticalagriculture:soulstone>, <mysticalagriculture:soulstone:1>, <mysticalagriculture:soulstone:2>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:4>, <mysticalagriculture:soulstone:5>, <mysticalagriculture:soulstone:6>]);
addChisel("sandstone", [<futuremc:smooth_sandstone>, <pvj:cracked_sand>]);
addChisel("sandstonered", [<futuremc:smooth_red_sandstone>, <pvj:red_cracked_sand>]);
recipes.remove(<botania:livingrock:3>);
furnace.addRecipe(<botania:livingrock:3>, <botania:livingrock>);
addChisel("livingrock", [<botania:livingrock:3>]);
furnace.addRecipe(<pvj:cracked_sand>, <minecraft:sandstone:2>);
furnace.addRecipe(<pvj:red_cracked_sand>, <minecraft:red_sandstone:2>);
mods.chisel.Carving.addGroup("perpetual_ice");
addChisel("perpetual_ice", [<bewitchment:perpetual_ice>, <bewitchment:embittered_bricks>, <bewitchment:chiseled_embittered_bricks>, <bewitchment:cracked_embittered_bricks>]);
mods.chisel.Carving.addGroup("terracotta");
addChisel("terracotta", [<minecraft:hardened_clay>, <tconstruct:dried_clay>]);
// stonecutter recipes ?????????????????????????????? do them if you have no life
