/**
 * @author prodzpod
 * @description my soul was put into this
 *
 * metal compat for everything
 * EVERYTHING
 *
 * note: never do this again
 *
 */
#priority 32766
#modloaded tconstruct
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;// literally taken from YacNext lol

function calculateUnitTemp(liquidTemp as int) as int {
    return (liquidTemp / 4) - 75;
}

function registerMelting(liquid as ILiquidStack, amount as double, item as IItemStack) {
    scripts.Base.registerMelting(liquid * amount, item);
}

// function baseMeltings(liquid as ILiquidStack, isGem as bool, ingot as IIngredient, block as IIngredient, nugget as IIngredient, ore as IIngredient, 
//     dust as IIngredient, dustTiny as IIngredient, plate as IIngredient, rod as IIngredient) {
//       if (!isNull(ingot)) {
//         registerMelting(liquid, 144, ingot);
//         Casting.addTableRecipe(ingot.itemArray[0], isGem ? <tconstruct:cast_custom:2> : <tconstruct:cast_custom:0>, liquid, 144);
//         Casting.addTableRecipe(isGem ? <tconstruct:cast_custom:2> : <tconstruct:cast_custom:0>, ingot.itemArray[0], <liquid:gold>, 144 * 2, true);
//     } if (!isNull(block)) {
//         registerMelting(liquid, 144 * 9, block);
//         Casting.addBasinRecipe(block.itemArray[0], null, liquid, 144 * 9);
//     } if (!isNull(nugget)) {
//         registerMelting(liquid, 144 / 9, nugget);
//         Casting.addTableRecipe(nugget.itemArray[0], <tconstruct:cast_custom:1>, liquid, 144 / 9);
//         Casting.addTableRecipe(<tconstruct:cast_custom:1>, nugget.itemArray[0], <liquid:gold>, 144 * 2, true);
//     } if (!isNull(ore)) {
//         registerMelting(liquid, ORE_MULTIPLIER, ore);
//         Casting.addBasinRecipe(ore.itemArray[0], <ore:stone>, liquid, 144 * 16, true);
//     } if (!isNull(dust)) {
//         registerMelting(liquid, 144, dust);
//     } if (!isNull(dustTiny)) {
//         registerMelting(liquid, 144 / 9, dustTiny);
//     } if (!isNull(plate)) {
//         registerMelting(liquid, 144, plate);
//         Casting.addTableRecipe(plate.itemArray[0], <tconstruct:cast_custom:3>, liquid, 144);
//         Casting.addTableRecipe(<tconstruct:cast_custom:3>, plate.itemArray[0], <liquid:gold>, 144 * 2, true);
//     } if (!isNull(rod)) {
//         registerMelting(liquid, 144 / 2, rod);
//         Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), rod.itemArray[0], <liquid:gold>, 144 * 2, true);
//         Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"}), rod.itemArray[0], <liquid:gold>, 144 * 2, true);
//     }
// }

function toolMeltings(liquid as ILiquidStack, name as string, 
    helmet as IItemStack, chestplate as IItemStack, leggings as IItemStack, boots as IItemStack, 
    sword as IItemStack, shovel as IItemStack, pickaxe as IItemStack, axe as IItemStack, hoe as IItemStack) {
          if (!isNull(helmet)) {
            scripts.Base.registerTools(name, liquid, helmet, 5);
        } if (!isNull(chestplate)) {
            scripts.Base.registerTools(name, liquid, chestplate, 8);
        } if (!isNull(leggings)) {
            scripts.Base.registerTools(name, liquid, leggings, 7);
        } if (!isNull(boots)) {
            scripts.Base.registerTools(name, liquid, boots, 4);
        } if (!isNull(sword)) {
            scripts.Base.registerTools(name, liquid, sword, 2);
        } if (!isNull(shovel)) {
            scripts.Base.registerTools(name, liquid, shovel, 1);
        } if (!isNull(pickaxe)) {
            scripts.Base.registerTools(name, liquid, pickaxe, 3);
        } if (!isNull(axe)) {
            scripts.Base.registerTools(name, liquid, axe, 3);
        } if (!isNull(hoe)) {
            scripts.Base.registerTools(name, liquid, hoe, 2);
        }
}

function extraToolMeltings(liquid as ILiquidStack, name as string, 
    bow as IItemStack, rod as IItemStack, shears as IItemStack, sickle as IItemStack, sickle2 as IItemStack, 
    hammer as IItemStack, excavator as IItemStack, shield as IItemStack, aiot as IItemStack, wand as IItemStack) {
        if (!isNull(bow)) {
            scripts.Base.registerTools(name, liquid, bow, 2);
        } if (!isNull(rod)) {
            scripts.Base.registerTools(name, liquid, rod, 2);
        } if (!isNull(shears)) {
            scripts.Base.registerTools(name, liquid, shears, 2);
        } if (!isNull(sickle)) {
            scripts.Base.registerTools(name, liquid, sickle, 3);
        } if (!isNull(sickle2)) {
            scripts.Base.registerTools(name, liquid, sickle2, 5);
        } if (!isNull(hammer)) {
            scripts.Base.registerTools(name, liquid, hammer, 5);
        } if (!isNull(excavator)) {
            scripts.Base.registerTools(name, liquid, excavator, 3);
        } if (!isNull(shield)) {
            scripts.Base.registerTools(name, liquid, shield, 6);
        } if (!isNull(aiot)) {
            scripts.Base.registerTools(name, liquid, aiot, 11);
        } if (!isNull(wand)) {
            scripts.Base.registerTools(name, liquid, wand, 1);
        }
}

// function thaumOreMeltings(liquid as ILiquidStack, nativeOre as IIngredient, eldritchOre as IIngredient) {
//       if (!isNull(nativeOre)) {
//         registerMelting(liquid, ORE_MULTIPLIER * 2, nativeOre);
//     } if (!isNull(eldritchOre)) {
//         registerMelting(liquid, ORE_MULTIPLIER * 3, eldritchOre);
//     }
// }

function additionalLights(liquid as ILiquidStack, allamp as IItemStack, altorch as IItemStack, standingTorch as IItemStack, standingTorchL as IItemStack, firePit as IItemStack, firePitL as IItemStack) {
    if (!isNull(allamp)) {
        scripts.Base.registerMelting(liquid * 1296, allamp);
    } if (!isNull(altorch)) {
        scripts.Base.registerMelting(liquid * 1296, altorch);
    } if (!isNull(standingTorch)) {
        scripts.Base.registerMelting(liquid * 1296, standingTorch);
    } if (!isNull(standingTorchL)) {
        scripts.Base.registerMelting(liquid * 1296 * 2, standingTorchL);
    } if (!isNull(firePit)) {
        scripts.Base.registerMelting(liquid * 1296 * 3, firePit);
    } if (!isNull(firePitL)) {
        scripts.Base.registerMelting(liquid * 1296 * 6, firePitL);
    }   
}

/* function registerMetal(
    name as string, 
    fluid as ILiquidStack, 
    ingot as IItemStack, 
    isGem as bool, 
    block as IItemStack, 
    isFours as bool, 
    nugget as IItemStack, 
    dust as IItemStack, 
    plate as IItemStack, 
    gear as IItemStack, 
    rod as IItemStack);
*/

scripts.Base.registerMetal("Iron", <liquid:iron>, oreDict.ingotIron.firstItem, false, oreDict.blockIron.firstItem, false, 
    oreDict.nuggetIron.firstItem, oreDict.dustIron.firstItem, oreDict.plateIron.firstItem, oreDict.gearIron.firstItem, oreDict.stickIron.firstItem);
toolMeltings(<liquid:iron>, "Iron", <minecraft:iron_helmet>, <minecraft:iron_chestplate>, <minecraft:iron_leggings>, <minecraft:iron_boots>, <minecraft:iron_sword>, <minecraft:iron_shovel>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:iron_hoe>);
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:chainmail_helmet>, 80 * 21);
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:chainmail_chestplate>, 128 * 21);
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:chainmail_leggings>, 114 * 21);
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:chainmail_boots>, 64 * 21);
extraToolMeltings(<liquid:iron>, "Iron", <thermalfoundation:tool.bow_iron>, <thermalfoundation:tool.fishing_rod_iron>, <minecraft:shears>, <thermalfoundation:tool.sickle_iron>, <extrautils2:sickle_iron>, <thermalfoundation:tool.hammer_iron>, <thermalfoundation:tool.excavator_iron>, <thermalfoundation:tool.shield_iron>, <actuallyadditions:iron_paxel>, <betterbuilderswands:wandiron>);
additionalLights(<liquid:iron>, <additional_lights:al_lamp_iron_block>, <additional_lights:al_torch_iron_block>, <additional_lights:standing_torch_s_iron_block>, <additional_lights:standing_torch_l_iron_block>, <additional_lights:fire_pit_s_iron_block>, <additional_lights:fire_pit_l_iron_block>);

// Iron ///////////////////////////////////////////
// registerMelting(<liquid:iron>, 144 * 6, <immersivetech:metal_barrel>);
// registerMelting(<liquid:iron>, 144 * 8 , <projecte:item.pe_ring_iron_band>);
// registerMelting(<liquid:iron>, 16 * 11, <futureminecraf:chain>);
registerMelting(<liquid:iron>, 16 * 2, <cookingforblockheads:tool_rack>);
registerMelting(<liquid:iron>, 16 * 23, <mcwdoors:metal_door>);
registerMelting(<liquid:iron>, 16 * 23, <mcwdoors:metal_windowed_door>);
registerMelting(<liquid:iron>, 16 * 25, <mcwdoors:metal_warning_door>);
registerMelting(<liquid:iron>, 8 * 29, <mcwdoors:metal_hospital_door>);
registerMelting(<liquid:iron>, 16 * 31, <mcwdoors:metal_reinforced_door>);
registerMelting(<liquid:iron>, 16 * 6, <bewitchment:goblet>);
// registerMelting(<liquid:iron>, 16 * 8, <futureminecraf:lantern>);
// registerMelting(<liquid:iron>, 16 * 8, <futureminecraf:soulfirelantern>);
registerMelting(<liquid:iron>, 144 * 0.25, <soot:wrought_tile>);
// registerMelting(<liquid:iron>, 144 * 9, <simplyjetpacks:metaitemmods:40>);
registerMelting(<liquid:iron>, 16 * 1, <rustic:dust_tiny_iron>);
registerMelting(<liquid:iron>, 16 * 21, <quark:chain>);
registerMelting(<liquid:iron>, 16 * 4, <jaff:iron_hook>);
registerMelting(<liquid:iron>, 4, <of:nail>);
registerMelting(<liquid:iron>, 9 * 222, <of:safe>);
registerMelting(<liquid:iron>, 9 * 27, <soot:wrought_platform_slab>);
registerMelting(<liquid:iron>, 9 * 36, <mcwdoors:jail_door>);
registerMelting(<liquid:iron>, 9 * 48, <harvestcraft:waterfilter>);
registerMelting(<liquid:iron>, 9 * 5, <rustic:iron_lattice>);
registerMelting(<liquid:iron>, 9 * 54, <soot:wrought_platform>);
registerMelting(<liquid:iron>, 9 * 6, <minecraft:iron_bars>);
registerMelting(<liquid:iron>, 9 * 62, <bewitchment:witches_oven>);
registerMelting(<liquid:iron>, 9 * 7, <quark:iron_plate>);
registerMelting(<liquid:iron>, 9 * 72, <flyringbaublemod:birdcage>);
registerMelting(<liquid:iron>, 9 * 76, <agricraft:sprinkler>);
registerMelting(<liquid:iron>, 9 * 88, <immersiveengineering:metal_device0:6>);
registerMelting(<liquid:iron>, 144 * 0.25, <quark:iron_plate_stairs>);
registerMelting(<liquid:iron>, 144 * 10, <soot:redstone_bin>);
registerMelting(<liquid:iron>, 144 * 11 / 24, <quark:iron_plate:1>);
registerMelting(<liquid:iron>, 144 * 12.5, <quark:grate>);
registerMelting(<liquid:iron>, 144 * 15, <extrautils2:drum>);
registerMelting(<liquid:iron>, 144 * 16, <immersiveengineering:jerrycan>);
registerMelting(<liquid:iron>, 144 * 2 , <quark:iron_rod>);
registerMelting(<liquid:iron>, 144 * 2, <minecraft:iron_door>);
registerMelting(<liquid:iron>, 144 * 2, <of:pole_ladder>);
registerMelting(<liquid:iron>, 144 * 2, <of:toilet_paper_holder>);
registerMelting(<liquid:iron>, 144 * 21, <of:microwave>);
registerMelting(<liquid:iron>, 144 * 23, <immersiveengineering:drillhead:1>);
registerMelting(<liquid:iron>, 144 * 3, <of:street_lantern>);
registerMelting(<liquid:iron>, 144 * 31, <minecraft:anvil>);
registerMelting(<liquid:iron>, 144 * 4, <minecraft:iron_horse_armor>);
registerMelting(<liquid:iron>, 144 * 4, <minecraft:iron_trapdoor>);
registerMelting(<liquid:iron>, 144 * 5, <minecraft:hopper>);
registerMelting(<liquid:iron>, 144 * 5, <minecraft:minecart>);
registerMelting(<liquid:iron>, 144 * 5, <of:pan>);
registerMelting(<liquid:iron>, 18 * 6, <immersiveengineering:metal_device1:6>);
registerMelting(<liquid:iron>, 144 * 6.5, <immersiveengineering:metal_device0:4>);
registerMelting(<liquid:iron>, 144 * 7, <minecraft:cauldron>);
registerMelting(<liquid:iron>, 144 * 7, <of:sink>);
registerMelting(<liquid:iron>, 144 * 8, <of:end_toilet>);
registerMelting(<liquid:iron>, 144 * 8, <of:nether_toilet>);
registerMelting(<liquid:iron>, 144 * 8, <of:toilet>);
registerMelting(<liquid:iron>, 144 / 2, <minecraft:tripwire_hook>);
registerMelting(<liquid:iron>, 144 / 3, <quark:iron_plate>);
registerMelting(<liquid:iron>, 144 / 32, <chisel:tyrian>);
registerMelting(<liquid:iron>, 144 / 6 , <quark:iron_plate_slab>);
registerMelting(<liquid:iron>, 144 / 8, <chisel:factory>);
// registerMelting(<liquid:iron>, 1296 * 3, <environmentaltech:lightning_rod>);
scripts.Base.registerTools("Iron", <liquid:iron>, <agricraft:clipper>, 3);
scripts.Base.registerTools("Iron", <liquid:iron>, <agricraft:rake>, 21 / 9);
scripts.Base.registerTools("Iron", <liquid:iron>, <agricraft:trowel>, 2);
scripts.Base.registerTools("Iron", <liquid:iron>, <cfm:item_spatula>, 33 / 16);
scripts.Base.registerTools("Iron", <liquid:iron>, <chisel:chisel_iron>, 1);
scripts.Base.registerTools("Iron", <liquid:iron>, <extrautils2:glasscutter>, 3);
scripts.Base.registerTools("Iron", <liquid:iron>, <extrautils2:trowel>, 1);
scripts.Base.registerTools("Iron", <liquid:iron>, <immersiveengineering:tool:1>, 1);
scripts.Base.registerTools("Iron", <liquid:iron>, <immersiveengineering:tool>, 2);
scripts.Base.registerTools("Iron", <liquid:iron>, <microblockcbe:saw_iron>, 1);
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:bucket>, 3);
scripts.Base.registerTools("Iron", <liquid:iron>, <quark:trowel>, 2);
// registerMelting(<liquid:iron>, 144 * 7, <watercan:watercan_iron>);
// registerMelting(<liquid:iron>, 144 * 7, <watercan:watercan_gold>);

// Gold ///////////////////////////////////////////
scripts.Base.registerMetal("Gold", <liquid:gold>, oreDict.ingotGold.firstItem, false, oreDict.blockGold.firstItem, false, 
    oreDict.nuggetGold.firstItem, oreDict.dustGold.firstItem, oreDict.plateGold.firstItem, oreDict.gearGold.firstItem, oreDict.stickGold.firstItem);
toolMeltings(<liquid:gold>, "Gold", <minecraft:golden_helmet>, <minecraft:golden_chestplate>, <minecraft:golden_leggings>, <minecraft:golden_boots>, <minecraft:golden_sword>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:golden_hoe>);
extraToolMeltings(<liquid:gold>, "Gold", <thermalfoundation:tool.bow_gold>, <thermalfoundation:tool.fishing_rod_gold>, <thermalfoundation:tool.shears_gold>, <thermalfoundation:tool.sickle_gold>, <extrautils2:sickle_gold>, <thermalfoundation:tool.hammer_gold>, <thermalfoundation:tool.excavator_gold>, <thermalfoundation:tool.shield_gold>, <actuallyadditions:gold_paxel>, null);
additionalLights(<liquid:gold>, <additional_lights:al_lamp_gold_block>, <additional_lights:al_torch_gold_block>, <additional_lights:standing_torch_s_gold_block>, <additional_lights:standing_torch_l_gold_block>, <additional_lights:fire_pit_s_gold_block>, <additional_lights:fire_pit_l_gold_block>);

registerMelting(<liquid:gold>, 144 * 0.25, <mia:torch_gold:*>);
registerMelting(<liquid:gold>, 144 * 6, <bewitchment:gold_baphomet_statue>);
registerMelting(<liquid:gold>, 144 * 6, <bewitchment:gold_herne_statue>);
registerMelting(<liquid:gold>, 144 * 6, <bewitchment:gold_leonard_statue>);
registerMelting(<liquid:gold>, 144 * 6, <bewitchment:gold_lilith_statue>);
registerMelting(<liquid:gold>, 144 / 18, <bewitchment:golden_thread>);
// registerMelting(<liquid:gold>, 144 / 9 * 8, <charset:keyring>);
// registerMelting(<liquid:gold>, 144 / 9 * 29, <charset:key>);
registerMelting(<liquid:gold>, 16 * 4, <extrautils2:goldenlasso>);

// Metal Series(es) ///////////////////////////////////////////

registerMelting(<liquid:iron>, 144 * 2, <minecraft:heavy_weighted_pressure_plate>);
registerMelting(<liquid:gold>, 144 * 2, <minecraft:light_weighted_pressure_plate>);
registerMelting(<liquid:iron>, 144 / 9 * 8, <charm:iron_lantern>);
registerMelting(<liquid:gold>, 144 / 9 * 8, <charm:gold_lantern>);

registerMelting(<liquid:iron>, 144       , <quark:iron_button>);
registerMelting(<liquid:gold>, 144       , <quark:gold_button>);
registerMelting(<liquid:iron>, 144 * 18, <extrautils2:spike_iron>);
registerMelting(<liquid:gold>, 144 * 18, <extrautils2:spike_gold>);
registerMelting(<liquid:iron>, 16 * 20, <bewitchment:candelabra_iron>);
registerMelting(<liquid:gold>, 16 * 20, <bewitchment:candelabra_gold>);
registerMelting(<liquid:silver>, 16 * 20, <bewitchment:candelabra_silver>);

registerMelting(<liquid:iron>, 144 * 0.5, <rustic:iron_lantern>);
registerMelting(<liquid:gold>, 144 * 0.5, <rustic:golden_lantern>);
registerMelting(<liquid:brass>, 144 * 0.5, <rusticthaumaturgy:lantern_brass>);
registerMelting(<liquid:iron>, 144 * 4.25, <rustic:chandelier>);
registerMelting(<liquid:gold>, 144 * 4.25, <rustic:chandelier_gold>);
registerMelting(<liquid:brass>, 144 * 4.25, <rusticthaumaturgy:chandelier_brass>);
registerMelting(<liquid:iron>, 144 * 0.75, <rustic:chain>);
registerMelting(<liquid:gold>, 144 * 0.75, <rustic:chain_gold>);
registerMelting(<liquid:brass>, 144 * 0.75, <rusticthaumaturgy:chain_brass>);
registerMelting(<liquid:iron>, 144 * 0.25, <rustic:candle>);
registerMelting(<liquid:gold>, 144 * 0.25, <rustic:candle_gold>);
registerMelting(<liquid:brass>, 144 * 0.25, <rusticthaumaturgy:candle_brass>);

scripts.Base.registerTools("Iron", <liquid:iron>, <jaff:iron_fishing_rod>, 22 / 9);
scripts.Base.registerTools("Iron", <liquid:iron>, <jaff:wooden_fishing_rod>, 22 / 9);
scripts.Base.registerTools("Gold", <liquid:gold>, <jaff:golden_fishing_rod>, 2);
scripts.Base.registerTools("Diamond", null, <jaff:diamond_fishing_rod>, 2);

registerMelting(<liquid:iron>, 18 * 3, <embers:pipe>);
registerMelting(<liquid:lead>, 18 * 3, <embers:item_pipe>);

// Minecraft ///////////////////////////////////////////

// Coal
scripts.Base.registerMetal("Coal", <liquid:coal>, oreDict.gemCoal.firstItem, true, oreDict.blockCoal.firstItem, false, 
    oreDict.nuggetCoal.firstItem, oreDict.dustCoal.firstItem, oreDict.plateCoal.firstItem, oreDict.gearCoal.firstItem, oreDict.stickCoal.firstItem);
registerMelting(<liquid:coal>, 144, <mekanism:compressedcarbon>);

// Diamond
scripts.Base.registerMetal("Diamond", null, oreDict.gemDiamond.firstItem, true, oreDict.blockDiamond.firstItem, false, 
    <agricraft:agri_nugget:1>, oreDict.dustDiamond.firstItem, oreDict.plateDiamond.firstItem, oreDict.gearDiamond.firstItem, oreDict.stickDiamond.firstItem);
toolMeltings(null, "Diamond", <minecraft:diamond_helmet>, <minecraft:diamond_chestplate>, <minecraft:diamond_leggings>, <minecraft:diamond_boots>, <minecraft:diamond_sword>, <minecraft:diamond_shovel>, <minecraft:diamond_pickaxe>, <minecraft:diamond_axe>, <minecraft:diamond_hoe>);
extraToolMeltings(null, "Diamond", <thermalfoundation:tool.bow_diamond>, <thermalfoundation:tool.fishing_rod_diamond>, <thermalfoundation:tool.shears_diamond>, <thermalfoundation:tool.sickle_diamond>, <extrautils2:sickle_diamond>, <thermalfoundation:tool.hammer_diamond>, <thermalfoundation:tool.excavator_diamond>, <thermalfoundation:tool.shield_diamond>, <actuallyadditions:diamond_paxel>, <betterbuilderswands:wanddiamond>);

// Emerald
scripts.Base.registerMetal("Emerald", <liquid:emerald>, oreDict.gemEmerald.firstItem, true, oreDict.blockEmerald.firstItem, false, 
    <agricraft:agri_nugget:0>, <actuallyadditions:item_dust:3>, oreDict.plateEmerald.firstItem, oreDict.gearEmerald.firstItem, oreDict.stickEmerald.firstItem);
toolMeltings(<liquid:emerald>, "Emerald", <actuallyadditions:item_helm_emerald>, <actuallyadditions:item_chest_emerald>, <actuallyadditions:item_pants_emerald>, <actuallyadditions:item_boots_emerald>, <actuallyadditions:item_sword_emerald>, <actuallyadditions:item_shovel_emerald>, <actuallyadditions:item_pickaxe_emerald>, <actuallyadditions:item_axe_emerald>, <actuallyadditions:item_hoe_emerald>);
extraToolMeltings(<liquid:emerald>, "Emerald", null, null, null, null, null, null, null, null, <actuallyadditions:diamond_paxel>, null);

// Lapis Lazuli
scripts.Base.registerMetal("Lapis", null, oreDict.gemLapis.firstItem, true, oreDict.blockLapis.firstItem, false, 
    oreDict.nuggetLapis.firstItem, oreDict.dustLapis.firstItem, oreDict.plateLapis.firstItem, oreDict.gearLapis.firstItem, oreDict.stickLapis.firstItem);

// Quartz
scripts.Base.registerMetal("Quartz", null, oreDict.gemQuartz.firstItem, true, oreDict.blockQuartz.firstItem, true, 
    oreDict.nuggetQuartz.firstItem, oreDict.dustQuartz.firstItem, oreDict.plateQuartz.firstItem, oreDict.gearQuartz.firstItem, oreDict.stickQuartz.firstItem);

// Netherite
// scripts.Base.registerMetal("Netherite", <liquid:netherite>, <futureminecraf:netheriteingot>, false, <futureminecraf:netheriteblock>, false, 
    // <contenttweaker:netherite_nugget>, <contenttweaker:netherite_dust>, <contenttweaker:netherite_plate>, <contenttweaker:netherite_gear>, <contenttweaker:netherite_rod>);
// toolMeltings(<liquid:netherite>, "Netherite", <futureminecraf:netheritehelmet>, <futureminecraf:netheritebody>, <futureminecraf:netheritelegs>, <futureminecraf:netheriteboots>, <futureminecraf:netheritesword>, <futureminecraf:netheriteshovel>, <futureminecraf:netheritepickaxe>, <futureminecraf:netheriteaxe>, <futureminecraf:netheritehoe>);

// Common Metals ///////////////////////////////////////////

// Copper
scripts.Base.registerMetal("Copper", <liquid:copper>, oreDict.ingotCopper.firstItem, false, oreDict.blockCopper.firstItem, false, 
    oreDict.nuggetCopper.firstItem, oreDict.dustCopper.firstItem, oreDict.plateCopper.firstItem, oreDict.gearCopper.firstItem, oreDict.stickCopper.firstItem);
toolMeltings(<liquid:copper>, "Copper", <thermalfoundation:armor.helmet_copper>, <thermalfoundation:armor.plate_copper>, <thermalfoundation:armor.legs_copper>, <thermalfoundation:armor.boots_copper>, <thermalfoundation:tool.sword_copper>, <thermalfoundation:tool.shovel_copper>, <thermalfoundation:tool.pickaxe_copper>, <thermalfoundation:tool.axe_copper>, <thermalfoundation:tool.hoe_copper>);
toolMeltings(<liquid:copper>, "Tin", null, null, null, null, <embers:sword_copper>, <embers:shovel_copper>, <embers:pickaxe_copper>, <embers:axe_copper>, <embers:hoe_copper>);
extraToolMeltings(<liquid:copper>, "Copper", <thermalfoundation:tool.bow_copper>, <thermalfoundation:tool.fishing_rod_copper>, <thermalfoundation:tool.shears_copper>, <thermalfoundation:tool.sickle_copper>, null, <thermalfoundation:tool.hammer_copper>, <thermalfoundation:tool.excavator_copper>, <thermalfoundation:tool.shield_copper>, null, null);

registerMelting(<liquid:copper>, 144, <immersiveengineering:wirecoil:0>);
registerMelting(<liquid:copper>, 144 * 4, <immersiveengineering:toolupgrade:8>);
registerMelting(<liquid:copper>, 144, <immersiveengineering:material:13>);
registerMelting(<liquid:copper>, 144, <immersiveengineering:bullet:0>);
registerMelting(<liquid:copper>, 144 * 2, <immersiveengineering:connector:1>);
registerMelting(<liquid:copper>, 144 * 3, <immersiveengineering:connector:0>);
registerMelting(<liquid:copper>, 144, <immersiveengineering:connector:9>);

// Tin
scripts.Base.registerMetal("Tin", <liquid:tin>, oreDict.ingotTin.firstItem, false, oreDict.blockTin.firstItem, false, 
    oreDict.nuggetTin.firstItem, oreDict.dustTin.firstItem, oreDict.plateTin.firstItem, oreDict.gearTin.firstItem, oreDict.stickTin.firstItem);
toolMeltings(<liquid:tin>, "Tin", <thermalfoundation:armor.helmet_tin>, <thermalfoundation:armor.plate_tin>, <thermalfoundation:armor.legs_tin>, <thermalfoundation:armor.boots_tin>, <thermalfoundation:tool.sword_tin>, <thermalfoundation:tool.shovel_tin>, <thermalfoundation:tool.pickaxe_tin>, <thermalfoundation:tool.axe_tin>, <thermalfoundation:tool.hoe_tin>);
toolMeltings(<liquid:tin>, "Tin", null, null, null, null, <embers:sword_tin>, <embers:shovel_tin>, <embers:pickaxe_tin>, <embers:axe_tin>, <embers:hoe_tin>);
extraToolMeltings(<liquid:tin>, "Tin", <thermalfoundation:tool.bow_tin>, <thermalfoundation:tool.fishing_rod_tin>, <thermalfoundation:tool.shears_tin>, <thermalfoundation:tool.sickle_tin>, null, <thermalfoundation:tool.hammer_tin>, <thermalfoundation:tool.excavator_tin>, <thermalfoundation:tool.shield_tin>, null, null);

// Lead
scripts.Base.registerMetal("Lead", <liquid:lead>, oreDict.ingotLead.firstItem, false, oreDict.blockLead.firstItem, false, 
    oreDict.nuggetLead.firstItem, oreDict.dustLead.firstItem, oreDict.plateLead.firstItem, oreDict.gearLead.firstItem, oreDict.stickLead.firstItem);
toolMeltings(<liquid:lead>, "Lead", <thermalfoundation:armor.helmet_lead>, <thermalfoundation:armor.plate_lead>, <thermalfoundation:armor.legs_lead>, <thermalfoundation:armor.boots_lead>, <thermalfoundation:tool.sword_lead>, <thermalfoundation:tool.shovel_lead>, <thermalfoundation:tool.pickaxe_lead>, <thermalfoundation:tool.axe_lead>, <thermalfoundation:tool.hoe_lead>);
toolMeltings(<liquid:lead>, "Lead", null, null, null, null, <embers:sword_lead>, <embers:shovel_lead>, <embers:pickaxe_lead>, <embers:axe_lead>, <embers:hoe_lead>);
extraToolMeltings(<liquid:lead>, "Lead", <thermalfoundation:tool.bow_lead>, <thermalfoundation:tool.fishing_rod_lead>, <thermalfoundation:tool.shears_lead>, <thermalfoundation:tool.sickle_lead>, null, <thermalfoundation:tool.hammer_lead>, <thermalfoundation:tool.excavator_lead>, <thermalfoundation:tool.shield_lead>, null, null);

registerMelting(<liquid:lead>, 81, <embers:item_transfer>);
registerMelting(<liquid:lead>, 18 * 35, <embers:vacuum>);

// Nickel
scripts.Base.registerMetal("Nickel", <liquid:nickel>, oreDict.ingotNickel.firstItem, false, oreDict.blockNickel.firstItem, false, 
    oreDict.nuggetNickel.firstItem, oreDict.dustNickel.firstItem, oreDict.plateNickel.firstItem, oreDict.gearNickel.firstItem, oreDict.stickNickel.firstItem);
toolMeltings(<liquid:nickel>, "Nickel", <thermalfoundation:armor.helmet_nickel>, <thermalfoundation:armor.plate_nickel>, <thermalfoundation:armor.legs_nickel>, <thermalfoundation:armor.boots_nickel>, <thermalfoundation:tool.sword_nickel>, <thermalfoundation:tool.shovel_nickel>, <thermalfoundation:tool.pickaxe_nickel>, <thermalfoundation:tool.axe_nickel>, <thermalfoundation:tool.hoe_nickel>);
toolMeltings(<liquid:nickel>, "Nickel", null, null, null, null, <embers:sword_nickel>, <embers:shovel_nickel>, <embers:pickaxe_nickel>, <embers:axe_nickel>, <embers:hoe_nickel>);
extraToolMeltings(<liquid:nickel>, "Nickel", <thermalfoundation:tool.bow_nickel>, <thermalfoundation:tool.fishing_rod_nickel>, <thermalfoundation:tool.shears_nickel>, <thermalfoundation:tool.sickle_nickel>, null, <thermalfoundation:tool.hammer_nickel>, <thermalfoundation:tool.excavator_nickel>, <thermalfoundation:tool.shield_nickel>, null, null);

// Silver
scripts.Base.registerMetal("Silver", <liquid:silver>, oreDict.ingotSilver.firstItem, false, oreDict.blockSilver.firstItem, false, 
    oreDict.nuggetSilver.firstItem, oreDict.dustSilver.firstItem, oreDict.plateSilver.firstItem, oreDict.gearSilver.firstItem, oreDict.stickSilver.firstItem);
toolMeltings(<liquid:silver>, "Silver", <thermalfoundation:armor.helmet_silver>, <thermalfoundation:armor.plate_silver>, <thermalfoundation:armor.legs_silver>, <thermalfoundation:armor.boots_silver>, <thermalfoundation:tool.sword_silver>, <thermalfoundation:tool.shovel_silver>, <thermalfoundation:tool.pickaxe_silver>, <thermalfoundation:tool.axe_silver>, <thermalfoundation:tool.hoe_silver>);
toolMeltings(<liquid:silver>, "Silver", null, null, null, null, <embers:sword_silver>, <embers:shovel_silver>, <embers:pickaxe_silver>, <embers:axe_silver>, <embers:hoe_silver>);
toolMeltings(<liquid:silver>, "Silver", <bewitchment:silver_helmet>, <bewitchment:silver_chestplate>, <bewitchment:silver_leggings>, <bewitchment:silver_boots>, <bewitchment:silver_sword>, <bewitchment:silver_shovel>, <bewitchment:silver_pickaxe>, <bewitchment:silver_axe>, <bewitchment:silver_hoe>);
extraToolMeltings(<liquid:silver>, "Silver", <thermalfoundation:tool.bow_silver>, <thermalfoundation:tool.fishing_rod_silver>, <thermalfoundation:tool.shears_silver>, <thermalfoundation:tool.sickle_silver>, null, <thermalfoundation:tool.hammer_silver>, <thermalfoundation:tool.excavator_silver>, <thermalfoundation:tool.shield_silver>, null, null);

// Aluminum
scripts.Base.registerMetal("Aluminum", <liquid:aluminum>, oreDict.ingotAluminum.firstItem, false, oreDict.blockAluminum.firstItem, false, 
    oreDict.nuggetAluminum.firstItem, oreDict.dustAluminum.firstItem, oreDict.plateAluminum.firstItem, oreDict.gearAluminum.firstItem, oreDict.stickAluminum.firstItem);
scripts.Base.registerMetal("Aluminium", <liquid:aluminum>, oreDict.ingotAluminum.firstItem, false, oreDict.blockAluminum.firstItem, false, 
    oreDict.nuggetAluminum.firstItem, oreDict.dustAluminum.firstItem, oreDict.plateAluminum.firstItem, oreDict.gearAluminum.firstItem, oreDict.stickAluminum.firstItem);
toolMeltings(<liquid:aluminum>, "Aluminum", <thermalfoundation:armor.helmet_aluminum>, <thermalfoundation:armor.plate_aluminum>, <thermalfoundation:armor.legs_aluminum>, <thermalfoundation:armor.boots_aluminum>, <thermalfoundation:tool.sword_aluminum>, <thermalfoundation:tool.shovel_aluminum>, <thermalfoundation:tool.pickaxe_aluminum>, <thermalfoundation:tool.axe_aluminum>, <thermalfoundation:tool.hoe_aluminum>);
toolMeltings(<liquid:aluminum>, "Aluminum", null, null, null, null, <embers:sword_aluminum>, <embers:shovel_aluminum>, <embers:pickaxe_aluminum>, <embers:axe_aluminum>, <embers:hoe_aluminum>);
extraToolMeltings(<liquid:aluminum>, "Aluminum", <thermalfoundation:tool.bow_aluminum>, <thermalfoundation:tool.fishing_rod_aluminum>, <thermalfoundation:tool.shears_aluminum>, <thermalfoundation:tool.sickle_aluminum>, null, <thermalfoundation:tool.hammer_aluminum>, <thermalfoundation:tool.excavator_aluminum>, <thermalfoundation:tool.shield_aluminum>, null, null);

registerMelting(<liquid:aluminum>, 144 * 5 / 3, <immersiveengineering:metal_decoration1:4>);
registerMelting(<liquid:aluminum>, 144 * 4.5, <immersiveengineering:metal_decoration1:5>);
registerMelting(<liquid:aluminum>, 144 * 4.5, <immersiveengineering:metal_decoration1:6>);
registerMelting(<liquid:aluminum>, 144 * 4.5, <immersiveengineering:metal_decoration1:7>);
registerMelting(<liquid:aluminum>, 144 * 3.5, <immersiveengineering:metal_decoration2:3>);
registerMelting(<liquid:aluminum>, 144 * 6.75, <immersiveengineering:metal_decoration2:8>);
registerMelting(<liquid:aluminum>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:5>);
registerMelting(<liquid:aluminum>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:6>);
registerMelting(<liquid:aluminum>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:7>);
registerMelting(<liquid:aluminum>, 144 * 3.375, <immersiveengineering:aluminum_scaffolding_stairs0>);
registerMelting(<liquid:aluminum>, 144 * 3.375, <immersiveengineering:aluminum_scaffolding_stairs1>);
registerMelting(<liquid:aluminum>, 144 * 3.375, <immersiveengineering:aluminum_scaffolding_stairs2>);
registerMelting(<liquid:aluminum>, 144 * 4, <engineersdoors:fencegate_aluminium>);

// Common Alloys ///////////////////////////////////////////

// Steel
scripts.Base.registerMetal("Steel", <liquid:steel>, oreDict.ingotSteel.firstItem, false, oreDict.blockSteel.firstItem, false, 
    oreDict.nuggetSteel.firstItem, oreDict.dustSteel.firstItem, oreDict.plateSteel.firstItem, oreDict.gearSteel.firstItem, oreDict.stickSteel.firstItem);
toolMeltings(<liquid:steel>, "Steel", <thermalfoundation:armor.helmet_steel>, <thermalfoundation:armor.plate_steel>, <thermalfoundation:armor.legs_steel>, <thermalfoundation:armor.boots_steel>, <thermalfoundation:tool.sword_steel>, <thermalfoundation:tool.shovel_steel>, <thermalfoundation:tool.pickaxe_steel>, <thermalfoundation:tool.axe_steel>, <thermalfoundation:tool.hoe_steel>);
extraToolMeltings(<liquid:steel>, "Steel", <thermalfoundation:tool.bow_steel>, <thermalfoundation:tool.fishing_rod_steel>, <thermalfoundation:tool.shears_steel>, <thermalfoundation:tool.sickle_steel>, null, <thermalfoundation:tool.hammer_steel>, <thermalfoundation:tool.excavator_steel>, <thermalfoundation:tool.shield_steel>, null, null);

registerMelting(<liquid:steel>, 144 * 5 / 3, <immersiveengineering:metal_decoration1:0>);
registerMelting(<liquid:steel>, 144 * 4.5, <immersiveengineering:metal_decoration1:1>);
registerMelting(<liquid:steel>, 144 * 4.5, <immersiveengineering:metal_decoration1:2>);
registerMelting(<liquid:steel>, 144 * 4.5, <immersiveengineering:metal_decoration1:3>);
registerMelting(<liquid:steel>, 144 * 10 / 3, <immersiveengineering:metal_decoration2:0>);
registerMelting(<liquid:steel>, 144 * 3.5, <immersiveengineering:metal_decoration2:1>);
registerMelting(<liquid:steel>, 144 * 6.75, <immersiveengineering:metal_decoration2:7>);
registerMelting(<liquid:steel>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:1>);
registerMelting(<liquid:steel>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:2>);
registerMelting(<liquid:steel>, 144 * 1.75, <immersiveengineering:metal_decoration1_slab:3>);
registerMelting(<liquid:steel>, 144 * 3.375, <immersiveengineering:steel_scaffolding_stairs0>);
registerMelting(<liquid:steel>, 144 * 3.375, <immersiveengineering:steel_scaffolding_stairs1>);
registerMelting(<liquid:steel>, 144 * 3.375, <immersiveengineering:steel_scaffolding_stairs2>);

registerMelting(<liquid:steel>, 144 * 7.75 / 4, <engineersdecor:steel_table>);
registerMelting(<liquid:steel>, 144 * 0.25, <engineersdecor:thin_steel_pole>);
registerMelting(<liquid:steel>, 144 * 0.25, <engineersdecor:thin_steel_pole_head>);
registerMelting(<liquid:steel>, 144 * 0.375, <engineersdecor:thick_steel_pole>);
registerMelting(<liquid:steel>, 144 * 0.375, <engineersdecor:thick_steel_pole_head>);
registerMelting(<liquid:steel>, 144 * 1.75 / 6, <engineersdecor:steel_double_t_support>);
registerMelting(<liquid:steel>, 144 * 1.25 / 4, <engineersdecor:steel_floor_grating>);
registerMelting(<liquid:steel>, 144 * 11 / 54, <engineersdecor:steel_mesh_fence>);
registerMelting(<liquid:steel>, 144 * 19 / 54, <engineersdecor:steel_mesh_fence_gate>);
registerMelting(<liquid:steel>, 144 * 6, <engineersdoors:door_steel>);
registerMelting(<liquid:steel>, 144 * 6, <engineersdoors:door_steel_ornate>);
registerMelting(<liquid:steel>, 144 * 6, <engineersdoors:door_steel_reinforced>);
registerMelting(<liquid:steel>, 144 * 4, <engineersdoors:fencegate_steel>);
registerMelting(<liquid:steel>, 144 * 4, <engineersdoors:trapdoor_steel>);
registerMelting(<liquid:steel>, 144, <immersiveengineering:material:14>);

registerMelting(<liquid:steel>, 144 * 5, <immersiveengineering:mold:*>);
// registerMelting(<liquid:steel>, 144 * 6.5, <immersivetech:metal_barrel:2>);
registerMelting(<liquid:steel>, 144 * 5, <immersiveengineering:material:16>);
registerMelting(<liquid:steel>, 144 * 5, <immersiveengineering:connector:6>);
registerMelting(<liquid:steel>, 144 * 15, <immersivepetroleum:upgrades:1>);
registerMelting(<liquid:steel>, 144 * 23, <immersiveengineering:drillhead>);

// Bronze
scripts.Base.registerMetal("Bronze", <liquid:bronze>, oreDict.ingotBronze.firstItem, false, oreDict.blockBronze.firstItem, false, 
    oreDict.nuggetBronze.firstItem, oreDict.dustBronze.firstItem, oreDict.plateBronze.firstItem, oreDict.gearBronze.firstItem, oreDict.stickBronze.firstItem);
toolMeltings(<liquid:bronze>, "Bronze", <thermalfoundation:armor.helmet_bronze>, <thermalfoundation:armor.plate_bronze>, <thermalfoundation:armor.legs_bronze>, <thermalfoundation:armor.boots_bronze>, <thermalfoundation:tool.sword_bronze>, <thermalfoundation:tool.shovel_bronze>, <thermalfoundation:tool.pickaxe_bronze>, <thermalfoundation:tool.axe_bronze>, <thermalfoundation:tool.hoe_bronze>);
toolMeltings(<liquid:bronze>, "Bronze", null, null, null, null, <embers:sword_bronze>, <embers:shovel_bronze>, <embers:pickaxe_bronze>, <embers:axe_bronze>, <embers:hoe_bronze>);
extraToolMeltings(<liquid:bronze>, "Bronze", <thermalfoundation:tool.bow_bronze>, <thermalfoundation:tool.fishing_rod_bronze>, <thermalfoundation:tool.shears_bronze>, <thermalfoundation:tool.sickle_bronze>, null, <thermalfoundation:tool.hammer_bronze>, <thermalfoundation:tool.excavator_bronze>, <thermalfoundation:tool.shield_bronze>, null, null);

// Electrum
scripts.Base.registerMetal("Electrum", <liquid:electrum>, oreDict.ingotElectrum.firstItem, false, oreDict.blockElectrum.firstItem, false, 
    oreDict.nuggetElectrum.firstItem, oreDict.dustElectrum.firstItem, oreDict.plateElectrum.firstItem, oreDict.gearElectrum.firstItem, oreDict.stickElectrum.firstItem);
toolMeltings(<liquid:electrum>, "Electrum", <thermalfoundation:armor.helmet_electrum>, <thermalfoundation:armor.plate_electrum>, <thermalfoundation:armor.legs_electrum>, <thermalfoundation:armor.boots_electrum>, <thermalfoundation:tool.sword_electrum>, <thermalfoundation:tool.shovel_electrum>, <thermalfoundation:tool.pickaxe_electrum>, <thermalfoundation:tool.axe_electrum>, <thermalfoundation:tool.hoe_electrum>);
toolMeltings(<liquid:electrum>, "Electrum", null, null, null, null, <embers:sword_electrum>, <embers:shovel_electrum>, <embers:pickaxe_electrum>, <embers:axe_electrum>, <embers:hoe_electrum>);
extraToolMeltings(<liquid:electrum>, "Electrum", <thermalfoundation:tool.bow_electrum>, <thermalfoundation:tool.fishing_rod_electrum>, <thermalfoundation:tool.shears_electrum>, <thermalfoundation:tool.sickle_electrum>, null, <thermalfoundation:tool.hammer_electrum>, <thermalfoundation:tool.excavator_electrum>, <thermalfoundation:tool.shield_electrum>, null, null);

registerMelting(<liquid:electrum>, 144, <immersiveengineering:wirecoil:1>);

// Invar
scripts.Base.registerMetal("Invar", <liquid:invar>, oreDict.ingotInvar.firstItem, false, oreDict.blockInvar.firstItem, false, 
    oreDict.nuggetInvar.firstItem, oreDict.dustInvar.firstItem, oreDict.plateInvar.firstItem, oreDict.gearInvar.firstItem, oreDict.stickInvar.firstItem);
toolMeltings(<liquid:invar>, "Invar", <thermalfoundation:armor.helmet_invar>, <thermalfoundation:armor.plate_invar>, <thermalfoundation:armor.legs_invar>, <thermalfoundation:armor.boots_invar>, <thermalfoundation:tool.sword_invar>, <thermalfoundation:tool.shovel_invar>, <thermalfoundation:tool.pickaxe_invar>, <thermalfoundation:tool.axe_invar>, <thermalfoundation:tool.hoe_invar>);
extraToolMeltings(<liquid:invar>, "Invar", <thermalfoundation:tool.bow_invar>, <thermalfoundation:tool.fishing_rod_invar>, <thermalfoundation:tool.shears_invar>, <thermalfoundation:tool.sickle_invar>, null, <thermalfoundation:tool.hammer_invar>, <thermalfoundation:tool.excavator_invar>, <thermalfoundation:tool.shield_invar>, null, null);

// Constantan
scripts.Base.registerMetal("Constantan", <liquid:constantan>, oreDict.ingotConstantan.firstItem, false, oreDict.blockConstantan.firstItem, false, 
    oreDict.nuggetConstantan.firstItem, oreDict.dustConstantan.firstItem, oreDict.plateConstantan.firstItem, oreDict.gearConstantan.firstItem, oreDict.stickConstantan.firstItem);
toolMeltings(<liquid:constantan>, "Constantan", <thermalfoundation:armor.helmet_constantan>, <thermalfoundation:armor.plate_constantan>, <thermalfoundation:armor.legs_constantan>, <thermalfoundation:armor.boots_constantan>, <thermalfoundation:tool.sword_constantan>, <thermalfoundation:tool.shovel_constantan>, <thermalfoundation:tool.pickaxe_constantan>, <thermalfoundation:tool.axe_constantan>, <thermalfoundation:tool.hoe_constantan>);
extraToolMeltings(<liquid:constantan>, "Constantan", <thermalfoundation:tool.bow_constantan>, <thermalfoundation:tool.fishing_rod_constantan>, <thermalfoundation:tool.shears_constantan>, <thermalfoundation:tool.sickle_constantan>, null, <thermalfoundation:tool.hammer_constantan>, <thermalfoundation:tool.excavator_constantan>, <thermalfoundation:tool.shield_constantan>, null, null);

// Thermal ///////////////////////////////////////////

// Platinum
scripts.Base.registerMetal("Platinum", <liquid:platinum>, oreDict.ingotPlatinum.firstItem, false, oreDict.blockPlatinum.firstItem, false, 
    oreDict.nuggetPlatinum.firstItem, oreDict.dustPlatinum.firstItem, oreDict.platePlatinum.firstItem, oreDict.gearPlatinum.firstItem, oreDict.stickPlatinum.firstItem);
toolMeltings(<liquid:platinum>, "Platinum", <thermalfoundation:armor.helmet_platinum>, <thermalfoundation:armor.plate_platinum>, <thermalfoundation:armor.legs_platinum>, <thermalfoundation:armor.boots_platinum>, <thermalfoundation:tool.sword_platinum>, <thermalfoundation:tool.shovel_platinum>, <thermalfoundation:tool.pickaxe_platinum>, <thermalfoundation:tool.axe_platinum>, <thermalfoundation:tool.hoe_platinum>);
extraToolMeltings(<liquid:platinum>, "Platinum", <thermalfoundation:tool.bow_platinum>, <thermalfoundation:tool.fishing_rod_platinum>, <thermalfoundation:tool.shears_platinum>, <thermalfoundation:tool.sickle_platinum>, null, <thermalfoundation:tool.hammer_platinum>, <thermalfoundation:tool.excavator_platinum>, <thermalfoundation:tool.shield_platinum>, null, null);

// Iridium
scripts.Base.registerMetal("Iridium", <liquid:iridium>, oreDict.ingotIridium.firstItem, false, oreDict.blockIridium.firstItem, false, 
    oreDict.nuggetIridium.firstItem, oreDict.dustIridium.firstItem, oreDict.plateIridium.firstItem, oreDict.gearIridium.firstItem, oreDict.stickIridium.firstItem);

// Mithril
scripts.Base.registerMetal("Mithril", <liquid:mithril>, oreDict.ingotMithril.firstItem, false, oreDict.blockMithril.firstItem, false, 
    oreDict.nuggetMithril.firstItem, oreDict.dustMithril.firstItem, oreDict.plateMithril.firstItem, oreDict.gearMithril.firstItem, oreDict.stickMithril.firstItem);

// Signalum
scripts.Base.registerMetal("Signalum", <liquid:signalum>, oreDict.ingotSignalum.firstItem, false, oreDict.blockSignalum.firstItem, false, 
    oreDict.nuggetSignalum.firstItem, oreDict.dustSignalum.firstItem, oreDict.plateSignalum.firstItem, oreDict.gearSignalum.firstItem, null);

// Lumium
scripts.Base.registerMetal("Lumium", <liquid:lumium>, oreDict.ingotLumium.firstItem, false, oreDict.blockLumium.firstItem, false, 
    oreDict.nuggetLumium.firstItem, oreDict.dustLumium.firstItem, oreDict.plateLumium.firstItem, oreDict.gearLumium.firstItem, null);

// Enderium
scripts.Base.registerMetal("Enderium", <liquid:enderium>, oreDict.ingotEnderium.firstItem, false, oreDict.blockEnderium.firstItem, false, 
    oreDict.nuggetEnderium.firstItem, oreDict.dustEnderium.firstItem, oreDict.plateEnderium.firstItem, oreDict.gearEnderium.firstItem, null);

// Tinker's Construct ///////////////////////////////////////////

// Cobalt
scripts.Base.registerMetal("Cobalt", <liquid:cobalt>, oreDict.ingotCobalt.firstItem, false, oreDict.blockCobalt.firstItem, false, 
    oreDict.nuggetCobalt.firstItem, oreDict.dustCobalt.firstItem, oreDict.plateCobalt.firstItem, oreDict.gearCobalt.firstItem, oreDict.stickCobalt.firstItem);

// Ardite
scripts.Base.registerMetal("Ardite", <liquid:ardite>, oreDict.ingotArdite.firstItem, false, oreDict.blockArdite.firstItem, false, 
    oreDict.nuggetArdite.firstItem, oreDict.dustArdite.firstItem, oreDict.plateArdite.firstItem, oreDict.gearArdite.firstItem, oreDict.stickArdite.firstItem);

// Manyullyn
scripts.Base.registerMetal("Manyullyn", <liquid:manyullyn>, oreDict.ingotManyullyn.firstItem, false, oreDict.blockManyullyn.firstItem, false, 
    oreDict.nuggetManyullyn.firstItem, null, null, null, null);
toolMeltings(<liquid:manyullyn>, "Manyullyn", <tcomplement:manyullyn_helmet>, <tcomplement:manyullyn_chestplate>, <tcomplement:manyullyn_leggings>, <tcomplement:manyullyn_boots>, null, null, null, null, null);

// Knightslime
scripts.Base.registerMetal("Knightslime", <liquid:knightslime>, oreDict.ingotKnightslime.firstItem, false, oreDict.blockKnightslime.firstItem, false, 
    oreDict.nuggetKnightslime.firstItem, null, null, null, null);
toolMeltings(<liquid:knightslime>, "Knightslime", <tcomplement:knightslime_helmet>, <tcomplement:knightslime_chestplate>, <tcomplement:knightslime_leggings>, <tcomplement:knightslime_boots>, null, null, null, null, null);

// Pig Iron
scripts.Base.registerMetal("Pigiron", <liquid:pigiron>, oreDict.ingotPigiron.firstItem, false, oreDict.blockPigiron.firstItem, false, 
    oreDict.nuggetPigiron.firstItem, null, null, null, null);

// Alubrass
scripts.Base.registerMetal("Alubrass", <liquid:alubrass>, oreDict.ingotAlubrass.firstItem, false, oreDict.blockAlubrass.firstItem, false, 
    oreDict.nuggetAlubrass.firstItem, null, null, null, null);

// Chocolate
scripts.Base.registerMetal("MilkChocolate", <liquid:milk_chocolate>, <tcomplement:edibles:10>, false, null, false, 
    <tcomplement:edibles:20>, null, null, null, null);
scripts.Base.registerMetal("DarkChocolate", <liquid:dark_chocolate>, <tcomplement:edibles:11>, false, null, false, 
    <tcomplement:edibles:21>, null, null, null, null);
scripts.Base.registerMetal("CocoaButter", <liquid:chocolate_liquor>, <tcomplement:edibles:30>, false, null, false, 
    null, null, null, null, null);

// Coalescence Matrix
scripts.Base.registerMetal("Coalescence", null, <tconevo:material>, false, null, false, null, null, null, null, null);

// Bound Metal
scripts.Base.registerMetal("BoundMetal", <liquid:bound_metal>, oreDict.ingotBoundMetal.firstItem, false, oreDict.blockBoundMetal.firstItem, false, 
    oreDict.nuggetBoundMetal.firstItem, oreDict.dustBoundMetal.firstItem, oreDict.plateBoundMetal.firstItem, oreDict.gearBoundMetal.firstItem, null);

// Sentient Metal
scripts.Base.registerMetal("SentientMetal", <liquid:sentient_metal>, oreDict.ingotSentientMetal.firstItem, false, oreDict.blockSentientMetal.firstItem, false, 
    oreDict.nuggetSentientMetal.firstItem, oreDict.dustSentientMetal.firstItem, oreDict.plateSentientMetal.firstItem, oreDict.gearSentientMetal.firstItem, null);

// Wyvern Metal
scripts.Base.registerMetal("WyvernMetal", <liquid:wyvern_metal>, oreDict.ingotWyvernMetal.firstItem, false, oreDict.blockWyvernMetal.firstItem, false, 
    oreDict.nuggetWyvernMetal.firstItem, oreDict.dustWyvernMetal.firstItem, oreDict.plateWyvernMetal.firstItem, oreDict.gearWyvernMetal.firstItem, null);

// Draconic Metal
scripts.Base.registerMetal("DraconicMetal", <liquid:draconic_metal>, oreDict.ingotDraconicMetal.firstItem, false, oreDict.blockDraconicMetal.firstItem, false, 
    oreDict.nuggetDraconicMetal.firstItem, oreDict.dustDraconicMetal.firstItem, oreDict.plateDraconicMetal.firstItem, oreDict.gearDraconicMetal.firstItem, null);

// Chaotic Metal
scripts.Base.registerMetal("ChaoticMetal", <liquid:chaotic_metal>, oreDict.ingotChaoticMetal.firstItem, false, oreDict.blockChaoticMetal.firstItem, false, 
    oreDict.nuggetChaoticMetal.firstItem, oreDict.dustChaoticMetal.firstItem, oreDict.plateChaoticMetal.firstItem, oreDict.gearChaoticMetal.firstItem, null);

// Primordial Metal
scripts.Base.registerMetal("Primordial", <liquid:sentient_metal>, oreDict.ingotPrimordial.firstItem, false, oreDict.blockPrimordial.firstItem, false, 
    oreDict.nuggetPrimordial.firstItem, oreDict.dustPrimordial.firstItem, oreDict.platePrimordial.firstItem, oreDict.gearPrimordial.firstItem, null);

// Meat
scripts.Base.registerMetal("Meat", null, oreDict.ingotMeat.firstItem, false, null, false, 
    oreDict.nuggetMeat.firstItem, null, null, null, null);

// Nuclearcraft / Immersive Engineering ///////////////////////////////////////////

// HOP Graphite
scripts.Base.registerMetal("HOPGraphite", null, oreDict.ingotHOPGraphite.firstItem, false, oreDict.blockHOPGraphite.firstItem, false, 
    null, oreDict.dustHOPGraphite.firstItem, null, null, null);

// Uranium
scripts.Base.registerMetal("Uranium", <liquid:uranium>, oreDict.ingotUranium.firstItem, false, oreDict.blockUranium.firstItem, false, 
    oreDict.nuggetUranium.firstItem, oreDict.dustUranium.firstItem, oreDict.plateUranium.firstItem, oreDict.gearUranium.firstItem, oreDict.stickUranium.firstItem);

// Thorium
scripts.Base.registerMetal("Thorium", <liquid:thorium>, oreDict.ingotThorium.firstItem, false, oreDict.blockThorium.firstItem, false, 
    oreDict.nuggetThorium.firstItem, oreDict.dustThorium.firstItem, oreDict.plateThorium.firstItem, oreDict.gearThorium.firstItem, oreDict.stickThorium.firstItem);

// Boron
scripts.Base.registerMetal("Boron", <liquid:boron>, oreDict.ingotBoron.firstItem, false, oreDict.blockBoron.firstItem, false, 
    oreDict.nuggetBoron.firstItem, oreDict.dustBoron.firstItem, oreDict.plateBoron.firstItem, oreDict.gearBoron.firstItem, oreDict.stickBoron.firstItem);
toolMeltings(<liquid:boron>, "Boron", <nuclearcraft:helm_boron>, <nuclearcraft:chest_boron>, <nuclearcraft:legs_boron>, <nuclearcraft:boots_boron>, <nuclearcraft:sword_boron>, <nuclearcraft:shovel_boron>, <nuclearcraft:pickaxe_boron>, <nuclearcraft:axe_boron>, <nuclearcraft:hoe_boron>);
extraToolMeltings(<liquid:boron>, "Boron", null, null, null, null, null, null, null, null, <nuclearcraft:spaxelhoe_boron>, null);

// Lithium
scripts.Base.registerMetal("Lithium", <liquid:lithium>, oreDict.ingotLithium.firstItem, false, oreDict.blockLithium.firstItem, false, 
    oreDict.nuggetLithium.firstItem, oreDict.dustLithium.firstItem, oreDict.plateLithium.firstItem, oreDict.gearLithium.firstItem, oreDict.stickLithium.firstItem);
    
// Magnesium
scripts.Base.registerMetal("Magnesium", <liquid:magnesium>, oreDict.ingotMagnesium.firstItem, false, oreDict.blockMagnesium.firstItem, false, 
    oreDict.nuggetMagnesium.firstItem, oreDict.dustMagnesium.firstItem, oreDict.plateMagnesium.firstItem, oreDict.gearMagnesium.firstItem, oreDict.stickMagnesium.firstItem);

// Graphite
scripts.Base.registerMetal("Graphite", <liquid:coal>, oreDict.ingotGraphite.firstItem, false, oreDict.blockGraphite.firstItem, false, 
    null, oreDict.dustGraphite.firstItem, null, null, null);

// Beryllium
scripts.Base.registerMetal("Beryllium", <liquid:beryllium>, oreDict.ingotBeryllium.firstItem, false, oreDict.blockBeryllium.firstItem, false, 
    null, oreDict.dustBeryllium.firstItem, null, null, null);

// Zirconium
scripts.Base.registerMetal("Zirconium", null, oreDict.ingotZirconium.firstItem, false, oreDict.blockZirconium.firstItem, false, 
    null, oreDict.dustZirconium.firstItem, null, null, null);

// Manganese
scripts.Base.registerMetal("Manganese", <liquid:manganese>, oreDict.ingotManganese.firstItem, false, oreDict.blockManganese.firstItem, false, 
    null, oreDict.dustManganese.firstItem, null, null, null);

// Thorium Oxide
scripts.Base.registerMetal("ThoriumOxide", null, oreDict.ingotThoriumOxide.firstItem, false, null, false, 
    null, oreDict.dustThoriumOxide.firstItem, null, null, null);
scripts.Base.registerDustForge(oreDict.ingotThorium.firstItem, oreDict.ingotThoriumOxide.firstItem);

// Uranium Oxide
scripts.Base.registerMetal("UraniumOxide", null, oreDict.ingotUraniumOxide.firstItem, false, null, false, 
    null, oreDict.dustUraniumOxide.firstItem, null, null, null);
scripts.Base.registerDustForge(oreDict.ingotUranium.firstItem, oreDict.ingotUraniumOxide.firstItem);

// Manganese Oxide
scripts.Base.registerMetal("ManganeseOxide", null, oreDict.ingotManganeseOxide.firstItem, false, null, false, 
    null, oreDict.dustManganeseOxide.firstItem, null, null, null);
scripts.Base.registerDustForge(oreDict.ingotManganese.firstItem, oreDict.ingotManganeseOxide.firstItem);

// Manganese Dioxide
scripts.Base.registerMetal("ManganeseDioxide", <liquid:manganese_dioxide>, oreDict.ingotManganeseDioxide.firstItem, false, null, false, 
    null, oreDict.dustManganeseDioxide.firstItem, null, null, null);
scripts.Base.registerDustForge(oreDict.ingotManganeseOxide.firstItem, oreDict.ingotManganeseDioxide.firstItem);

// Tough Alloy
scripts.Base.registerMetal("Tough", <liquid:tough>, oreDict.ingotTough.firstItem, false, null, false, <contenttweaker:tough_nugget>, null, null, null, null);
toolMeltings(<liquid:tough>, "Tough", <nuclearcraft:helm_tough>, <nuclearcraft:chest_tough>, <nuclearcraft:legs_tough>, <nuclearcraft:boots_tough>, <nuclearcraft:sword_tough>, <nuclearcraft:shovel_tough>, <nuclearcraft:pickaxe_tough>, <nuclearcraft:axe_tough>, <nuclearcraft:hoe_tough>);
extraToolMeltings(<liquid:tough>, "Tough", null, null, null, null, null, null, null, null, <nuclearcraft:spaxelhoe_tough>, null);

// Hard Carbon Alloy
scripts.Base.registerMetal("HardCarbon", <liquid:hard_carbon>, oreDict.ingotHardCarbon.firstItem, false, null, false, <contenttweaker:hard_carbon_nugget>, null, null, null, null);
toolMeltings(<liquid:hard_carbon>, "HardCarbon", <nuclearcraft:helm_hard_carbon>, <nuclearcraft:chest_hard_carbon>, <nuclearcraft:legs_hard_carbon>, <nuclearcraft:boots_hard_carbon>, <nuclearcraft:sword_hard_carbon>, <nuclearcraft:shovel_hard_carbon>, <nuclearcraft:pickaxe_hard_carbon>, <nuclearcraft:axe_hard_carbon>, <nuclearcraft:hoe_hard_carbon>);
extraToolMeltings(<liquid:hard_carbon>, "HardCarbon", null, null, null, null, null, null, null, null, <nuclearcraft:spaxelhoe_hard_carbon>, null);

// Magnesium Diboride Alloy
scripts.Base.registerMetal("MagnesiumDiboride", null, oreDict.ingotMagnesiumDiboride.firstItem, false, null, false, null, null, null, null, null);

// Lithium Manganese Diboride Alloy
scripts.Base.registerMetal("LithiumManganeseDiboride", null, oreDict.ingotLithiumManganeseDiboride.firstItem, false, null, false, null, null, null, null, null);

// Ferroboron Alloy
scripts.Base.registerMetal("Ferroboron", <liquid:ferroboron>, oreDict.ingotFerroboron.firstItem, false, null, false, null, null, null, null, null);

// Shibuichi Alloy
scripts.Base.registerMetal("Shibuichi", null, oreDict.ingotShibuichi.firstItem, false, null, false, null, null, null, null, null);

// Tin Silver Alloy
scripts.Base.registerMetal("TinSilver", null, oreDict.ingotTinSilver.firstItem, false, null, false, null, null, null, null, null);

// Lead Platinum Alloy
scripts.Base.registerMetal("LeadPlatinum", null, oreDict.ingotLeadPlatinum.firstItem, false, null, false, null, null, null, null, null);

// Extreme Alloy
scripts.Base.registerMetal("Extreme", null, oreDict.ingotExtreme.firstItem, false, null, false, null, null, null, null, null);

// Thermoconducting Alloy
scripts.Base.registerMetal("Thermoconducting", null, oreDict.ingotThermoconducting.firstItem, false, null, false, null, null, null, null, null);

// Zircaloy Alloy
scripts.Base.registerMetal("Zircaloy", null, oreDict.ingotZircaloy.firstItem, false, null, false, null, null, null, null, null);

// Silicon Carbide Alloy
scripts.Base.registerMetal("SiliconCarbide", null, oreDict.ingotSiliconCarbide.firstItem, false, null, false, null, null, null, null, null);

// SiC-SiC Ceramic Matrix Composite
scripts.Base.registerMetal("SiCSiCCMC", null, oreDict.ingotSiCSiCCMC.firstItem, false, null, false, null, null, null, null, null);

// HSLA Steel
scripts.Base.registerMetal("HSLASteel", null, oreDict.ingotHSLASteel.firstItem, false, null, false, null, null, null, null, null);

// More Chocolate
scripts.Base.registerMetal("CocoaButter", <liquid:cocoa_butter>, <nuclearcraft:cocoa_butter>, false, null, false, 
    null, null, null, null, null);
scripts.Base.registerMetal("UnsweetenedChocolate", <liquid:unsweetened_chocolate>, <nuclearcraft:unsweetened_chocolate>, false, null, false, 
    null, null, null, null, null);
scripts.Base.registerMetal("DarkChocolate", <liquid:dark_chocolate>, <nuclearcraft:dark_chocolate>, false, null, false, 
    null, null, null, null, null);
scripts.Base.registerMetal("Chocolate", <liquid:milk_chocolate>, <nuclearcraft:milk_chocolate>, false, null, false, 
    null, null, null, null, null);

// Rhodochrosite
scripts.Base.registerMetal("Rhodochrosite", null, oreDict.gemRhodochrosite.firstItem, true, null, false, 
    null, oreDict.dustRhodochrosite.firstItem, null, null, null);

// Boron Nitride
scripts.Base.registerMetal("BoronNitride", null, oreDict.gemBoronNitride.firstItem, true, null, false, 
    <contenttweaker:boron_nitride_nugget>, oreDict.dustBoronNitride.firstItem, null, null, null);
toolMeltings(null, "BoronNitride", <nuclearcraft:helm_boron_nitride>, <nuclearcraft:chest_boron_nitride>, <nuclearcraft:legs_boron_nitride>, <nuclearcraft:boots_boron_nitride>, <nuclearcraft:sword_boron_nitride>, <nuclearcraft:shovel_boron_nitride>, <nuclearcraft:pickaxe_boron_nitride>, <nuclearcraft:axe_boron_nitride>, <nuclearcraft:hoe_boron_nitride>);
extraToolMeltings(null, "BoronNitride", null, null, null, null, null, null, null, null, <nuclearcraft:spaxelhoe_boron_nitride>, null);

// Fluorite
scripts.Base.registerMetal("Fluorite", null, oreDict.gemFluorite.firstItem, true, null, false, 
    null, oreDict.dustFluorite.firstItem, null, null, null);

// Villiaumite
scripts.Base.registerMetal("Villiaumite", null, oreDict.gemVilliaumite.firstItem, true, null, false, 
    null, oreDict.dustVilliaumite.firstItem, null, null, null);

// Carobbiite
scripts.Base.registerMetal("Carobbiite", null, oreDict.gemCarobbiite.firstItem, true, null, false, 
    null, oreDict.dustCarobbiite.firstItem, null, null, null);

// Boron Arsenide
scripts.Base.registerMetal("BoronArsenide", null, oreDict.gemBoronArsenide.firstItem, true, null, false, 
    null, oreDict.dustBoronArsenide.firstItem, null, null, null);

// Botania ///////////////////////////////////////////

// Manasteel
scripts.Base.registerMetal("Manasteel", <liquid:manasteel>, oreDict.ingotManasteel.firstItem, false, <botania:storage>, false, 
    oreDict.nuggetManasteel.firstItem, null, null, null, null);
toolMeltings(<liquid:manasteel>, "Manasteel", <botania:manasteelhelm>, <botania:manasteelchest>, <botania:manasteellegs>, <botania:manasteelboots>, <botania:manasteelsword>, <botania:manasteelshovel>, <botania:manasteelpick>, <botania:manasteelaxe>, null);
extraToolMeltings(<liquid:manasteel>, "Manasteel", null, null, <botania:manasteelshears>, null, null, null, null, <extrabotany:manasteelshield>, null, null);
scripts.Base.registerTools("Manasteel", <liquid:manasteel>, <extrabotany:manasteelhammer>, 6);
registerMelting(<liquid:manasteel>, 144 * 5, <extrabotany:flyingboat:0>);
registerMelting(<liquid:manasteel>, 144 * 4, <botania:lens:0>);
registerMelting(<liquid:manasteel>, 144 * 4, <botania:sextant>);

// Terrasteel
scripts.Base.registerMetal("Terrasteel", <liquid:terrasteel>, oreDict.ingotTerrasteel.firstItem, false, <botania:storage:1>, false, 
    oreDict.nuggetTerrasteel.firstItem, null, null, null, null);
scripts.Base.registerTools("Terrasteel", <liquid:terrasteel>, <extrabotany:terrasteelhammer>, 6);
scripts.Base.registerTools("Terrasteel", <liquid:terrasteel>, <extrabotany:terrasteelshield>, 6);

// Elementium
scripts.Base.registerMetal("ElvenElementium", <liquid:elementium>, oreDict.ingotElvenElementium.firstItem, false, <botania:storage:2>, false, 
    oreDict.nuggetElvenElementium.firstItem, null, null, null, null);
toolMeltings(<liquid:elementium>, "ElvenElementium", <botania:elementiumhelm>, <botania:elementiumchest>, <botania:elementiumlegs>, <botania:elementiumboots>, <botania:elementiumsword>, <botania:elementiumshovel>, <botania:elementiumpick>, <botania:elementiumaxe>, null);
extraToolMeltings(<liquid:elementium>, "ElvenElementium", null, null, <botania:elementiumshears>, null, null, null, null, <extrabotany:elementiumshield>, null, null);
scripts.Base.registerTools("ElvenElementium", <liquid:elementium>, <extrabotany:elementiumhammer>, 6);
scripts.Base.registerTools("ElvenElementium", <liquid:elementium>, <botania:openbucket>, 3);
registerMelting(<liquid:elementium>, 144 * 5, <extrabotany:flyingboat:1>);

// Gaia Spirit
scripts.Base.registerMetal("GaiaIngot", <liquid:gaia>, oreDict.gaiaIngot.firstItem, false, null, false, 
    null, null, null, null, null);

// Gaiasteel
scripts.Base.registerMetal("Gaiasteel", <liquid:gaiasteel>, oreDict.ingotGaiasteel.firstItem, false, oreDict.blockGaiasteel.firstItem, false, 
    null, null, null, null, null);

// Orichalchos
scripts.Base.registerMetal("Orichalcos", <liquid:orichalcos>, oreDict.ingotOrichalcos.firstItem, false, <extrabotany:blockorichalcos>, false, 
    <contenttweaker:orichalcos_nugget>, null, null, null, null);

// Photonium
scripts.Base.registerMetal("Photonium", <liquid:photonium>, oreDict.ingotPhotonium.firstItem, false, <extrabotany:blockphotonium>, false, 
    <contenttweaker:photonium_nugget>, null, null, null, null);
toolMeltings(<liquid:photonium>, "Photonium", <extrabotany:goblinslayerhelm>, <extrabotany:goblinslayerchest>, <extrabotany:goblinslayerlegs>, <extrabotany:goblinslayerboots>, null, null, null, null, null);

// Shadownium
scripts.Base.registerMetal("Shadowium", <liquid:shadowium>, oreDict.ingotShadowium.firstItem, false, <extrabotany:blockshadowium>, false, 
    <contenttweaker:shadowium_nugget>, null, null, null, null);
toolMeltings(<liquid:shadowium>, "Shadowium", <extrabotany:shadowwarriorhelm>, <extrabotany:shadowwarriorchest>, <extrabotany:shadowwarriorlegs>, <extrabotany:shadowwarriorboots>, null, null, null, null, null);

// Embers ///////////////////////////////////////////

// Dawnstone
scripts.Base.registerMetal("Dawnstone", <liquid:dawnstone>, oreDict.ingotDawnstone.firstItem, false, oreDict.blockDawnstone.firstItem, false, 
    oreDict.nuggetDawnstone.firstItem, null, oreDict.plateDawnstone.firstItem, null, null);
toolMeltings(<liquid:dawnstone>, "Dawnstone", null, <embers:dawnstone_mail>, null, null, <embers:sword_dawnstone>, <embers:shovel_dawnstone>, <embers:pickaxe_dawnstone>, <embers:axe_dawnstone>, <embers:hoe_dawnstone>);

// Antimony
scripts.Base.registerMetal("Antimony", <liquid:antimony>, oreDict.ingotAntimony.firstItem, false, null, false, 
    null, null, null, null, null);

// Bewitchment ///////////////////////////////////////////

// Cold Iron
scripts.Base.registerMetal("ColdIron", <liquid:coldiron>, oreDict.ingotColdIron.firstItem, false, oreDict.blockColdIron.firstItem, false, 
    oreDict.nuggetColdIron.firstItem, null, oreDict.plateColdIron.firstItem, null, null);
toolMeltings(<liquid:coldiron>, "ColdIron", <bewitchment:cold_iron_helmet>, <bewitchment:cold_iron_chestplate>, <bewitchment:cold_iron_leggings>, <bewitchment:cold_iron_boots>, <bewitchment:cold_iron_sword>, <bewitchment:cold_iron_shovel>, <bewitchment:cold_iron_pickaxe>, <bewitchment:cold_iron_axe>, <bewitchment:cold_iron_hoe>);

// Amethyst
scripts.Base.registerMetal("Amethyst", null, oreDict.gemAmethyst.firstItem, true, oreDict.blockAmethyst.firstItem, false, 
    oreDict.nuggetAmethyst.firstItem, oreDict.dustAmethyst.firstItem, oreDict.plateAmethyst.firstItem, oreDict.gearAmethyst.firstItem, oreDict.stickAmethyst.firstItem);

// Garnet
scripts.Base.registerMetal("Garnet", null, oreDict.gemGarnet.firstItem, true, oreDict.blockGarnet.firstItem, false, 
    oreDict.nuggetGarnet.firstItem, oreDict.dustGarnet.firstItem, oreDict.plateGarnet.firstItem, oreDict.gearGarnet.firstItem, oreDict.stickGarnet.firstItem);

// Opal
scripts.Base.registerMetal("Opal", null, oreDict.gemOpal.firstItem, true, oreDict.blockOpal.firstItem, false, 
    oreDict.nuggetOpal.firstItem, oreDict.dustOpal.firstItem, oreDict.plateOpal.firstItem, oreDict.gearOpal.firstItem, oreDict.stickOpal.firstItem);

// Thaumcraft ///////////////////////////////////////////

// Amber
scripts.Base.registerMetal("Amber", null, oreDict.gemAmber.firstItem, true, oreDict.blockAmber.firstItem, true, 
    oreDict.nuggetAmber.firstItem, oreDict.dustAmber.firstItem, oreDict.plateAmber.firstItem, oreDict.gearAmber.firstItem, oreDict.stickAmber.firstItem);

// Brass
scripts.Base.registerMetal("Brass", <liquid:brass>, oreDict.ingotBrass.firstItem, false, oreDict.blockBrass.firstItem, false, 
    oreDict.nuggetBrass.firstItem, null, oreDict.plateBrass.firstItem, null, null);

registerMelting(<liquid:brass>, 144, <thaumcraft:baubles:0>);
registerMelting(<liquid:brass>, 144, <thaumcraft:baubles:2>);
registerMelting(<liquid:brass>, 16 * 8, <thaumcraft:baubles:1>);
registerMelting(<liquid:brass>, 16 * 4, <thaumcraft:jar_brace>);

// Thaumium
scripts.Base.registerMetal("Thaumium", <liquid:thaumium>, oreDict.ingotThaumium.firstItem, false, oreDict.blockThaumium.firstItem, false, 
    oreDict.nuggetThaumium.firstItem, null, oreDict.plateThaumium.firstItem, null, null);
toolMeltings(<liquid:thaumium>, "Thaumium", <thaumcraft:thaumium_helm>, <thaumcraft:thaumium_chest>, <thaumcraft:thaumium_legs>, <thaumcraft:thaumium_boots>, <thaumcraft:thaumium_sword>, <thaumcraft:thaumium_shovel>, <thaumcraft:thaumium_pick>, <thaumcraft:thaumium_axe>, <thaumcraft:thaumium_hoe>);
scripts.Base.registerTools("Thaumium", <liquid:thaumium>, <thaumcraft:fortress_helm>, 7);
scripts.Base.registerTools("Thaumium", <liquid:thaumium>, <thaumcraft:fortress_chest>, 12);
scripts.Base.registerTools("Thaumium", <liquid:thaumium>, <thaumcraft:fortress_legs>, 10);

registerMelting(<liquid:thaumium>, 144 * 23, <ea:drillhead_thaumium>);
registerMelting(<liquid:thaumium>, 144 * 4 / 5, <thaumicrestoration:block_reinforced>);

// Infused Thaumium
scripts.Base.registerMetal("ThaumiumAer", <liquid:fluid_molten_aer>, oreDict.ingotThaumiumAer.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumAer.firstItem, null, null);
scripts.Base.registerMetal("ThaumiumIgnis", <liquid:fluid_molten_ignis>, oreDict.ingotThaumiumIgnis.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumIgnis.firstItem, null, null);
scripts.Base.registerMetal("ThaumiumAqua", <liquid:fluid_molten_aqua>, oreDict.ingotThaumiumAqua.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumAqua.firstItem, null, null);
scripts.Base.registerMetal("ThaumiumTerra", <liquid:fluid_molten_terra>, oreDict.ingotThaumiumTerra.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumTerra.firstItem, null, null);
scripts.Base.registerMetal("ThaumiumOrdo", <liquid:fluid_molten_ordo>, oreDict.ingotThaumiumOrdo.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumOrdo.firstItem, null, null);
scripts.Base.registerMetal("ThaumiumPerditio", <liquid:fluid_molten_perditio>, oreDict.ingotThaumiumPerditio.firstItem, false, null, false, 
    null, null, oreDict.plateThaumiumPerditio.firstItem, null, null);

// Void Metal
scripts.Base.registerMetal("Void", <liquid:void_metal>, oreDict.ingotVoid.firstItem, false, oreDict.blockVoid.firstItem, false, 
    oreDict.nuggetVoid.firstItem, null, oreDict.plateVoid.firstItem, null, null);
toolMeltings(<liquid:void_metal>, "Void", <thaumcraft:void_helm>, <thaumcraft:void_chest>, <thaumcraft:void_legs>, <thaumcraft:void_boots>, <thaumcraft:void_sword>, <thaumcraft:void_shovel>, <thaumcraft:void_pick>, <thaumcraft:void_axe>, <thaumcraft:void_hoe>);

registerMelting(<liquid:void_metal>, 144 * 23, <ea:drillhead_void>);

// Mithrillium
scripts.Base.registerMetal("Mithrillium", <liquid:mithrillium>, oreDict.ingotMithrillium.firstItem, false, oreDict.blockMithrillium.firstItem, false, 
    oreDict.nuggetMithrillium.firstItem, null, oreDict.plateMithrillium.firstItem, null, null);

// Adaminite
scripts.Base.registerMetal("Adaminite", <liquid:adaminite>, oreDict.ingotAdaminite.firstItem, false, oreDict.blockAdaminite.firstItem, false, 
    oreDict.nuggetAdaminite.firstItem, null, oreDict.plateAdaminite.firstItem, null, null);

// Mithminite
scripts.Base.registerMetal("Mithminite", <liquid:mithminite>, oreDict.ingotMithminite.firstItem, false, oreDict.blockMithminite.firstItem, false, 
    oreDict.nuggetMithminite.firstItem, null, oreDict.plateMithminite.firstItem, null, null);

// Alkimium
scripts.Base.registerMetal("Alkimium", <liquid:molten_alkimium>, <planarartifice:alkimium_ingot>, false, <planarartifice:alkimium_block>, false, 
    <planarartifice:alkimium_nugget>, null, <planarartifice:alkimium_plate>, null, null);
scripts.Base.registerMetal("Alchemical", <liquid:molten_alkimium>, <planarartifice:alkimium_ingot>, false, <planarartifice:alkimium_block>, false, 
    <planarartifice:alkimium_nugget>, null, <planarartifice:alkimium_plate>, null, null);

// Bismuth
scripts.Base.registerMetal("Bismuth", <liquid:molten_bismuth>, oreDict.ingotBismuth.firstItem, false, null, false, 
    null, null, null, null, null);

// Astral Sorcery ///////////////////////////////////////////

// Aquamarine
scripts.Base.registerMetal("Aquamarine", null, oreDict.gemAquamarine.firstItem, true, oreDict.blockAquamarine.firstItem, false, 
    oreDict.nuggetAquamarine.firstItem, oreDict.dustAquamarine.firstItem, oreDict.plateAquamarine.firstItem, oreDict.gearAquamarine.firstItem, oreDict.stickAquamarine.firstItem);

// Starmetal
scripts.Base.registerMetal("AstralStarmetal", <liquid:astral_starmetal>, oreDict.ingotAstralStarmetal.firstItem, false, oreDict.blockAstralStarmetal.firstItem, false, 
    oreDict.nuggetAstralStarmetal.firstItem, oreDict.dustAstralStarmetal.firstItem, oreDict.plateAstralStarmetal.firstItem, oreDict.gearAstralStarmetal.firstItem, oreDict.stickAstralStarmetal.firstItem);

// Astralite
scripts.Base.registerMetal("Astralite", <liquid:astralite>, <contenttweaker:astralite>, false, <contenttweaker:block_of_astralite>, false, 
    <contenttweaker:astralite_nugget>, <contenttweaker:astralite_dust>, <contenttweaker:astralite_plate>, <contenttweaker:astralite_gear>, <contenttweaker:astralite_rod>);

// ContentTweaker ///////////////////////////////////////////

// Inert Aethoria
scripts.Base.registerMetal("InertAethoria", <liquid:inert_aethoria>, <contenttweaker:inert_aethoria>, false, <contenttweaker:block_of_inert_aethoria>, false, 
    <contenttweaker:inert_aethoria_nugget>, <contenttweaker:inert_aethoria_dust>, <contenttweaker:inert_aethoria_plate>, <contenttweaker:inert_aethoria_gear>, <contenttweaker:inert_aethoria_rod>);

// Aethoria
scripts.Base.registerMetal("Aethoria", <liquid:aethoria>, <contenttweaker:aethoria>, false, <contenttweaker:block_of_aethoria>, false, 
    <contenttweaker:aethoria_nugget>, <contenttweaker:aethoria_dust>, <contenttweaker:aethoria_plate>, <contenttweaker:aethoria_gear>, <contenttweaker:aethoria_rod>);

// Charged Aethoria
scripts.Base.registerMetal("ChargedAethoria", <liquid:charged_aethoria>, <contenttweaker:charged_aethoria>, false, <contenttweaker:block_of_charged_aethoria>, false, 
    <contenttweaker:charged_aethoria_nugget>, <contenttweaker:charged_aethoria_dust>, <contenttweaker:charged_aethoria_plate>, <contenttweaker:charged_aethoria_gear>, <contenttweaker:charged_aethoria_rod>);

// Extra Utility ///////////////////////////////////////////

// Demon Ingot
scripts.Base.registerMetal("DemonicMetal", <liquid:xu_demonic_metal>, oreDict.ingotDemonicMetal.firstItem, false, oreDict.blockDemonicMetal.firstItem, false, 
    null, null, null, null, null);

// Enchanted Ingot
scripts.Base.registerMetal("EnchantedMetal", <liquid:xu_enchanted_metal>, oreDict.ingotEnchantedMetal.firstItem, false, oreDict.blockEnchantedMetal.firstItem, false, 
    null, null, null, null, null);

// Evil Infused
scripts.Base.registerMetal("EvilMetal", <liquid:xu_evil_metal>, oreDict.ingotEvilMetal.firstItem, false, oreDict.blockEvilMetal.firstItem, false, 
    null, null, null, null, null);

// Mystical Agriculture ///////////////////////////////////////////

// Base Essence
scripts.Base.registerMetal("BaseEssence", <liquid:base_essence>, oreDict.ingotBaseEssence.firstItem, false, oreDict.blockBaseEssence.firstItem, false, 
    oreDict.nuggetBaseEssence.firstItem, null, null, null, null);

// Inferium
scripts.Base.registerMetal("Inferium", <liquid:inferium>, oreDict.ingotInferium.firstItem, false, oreDict.blockInferium.firstItem, false, 
    oreDict.nuggetInferium.firstItem, null, null, null, null);
registerMelting(<liquid:inferium>, 64, <mysticalagriculture:gear:15>);
registerMelting(<liquid:inferium>, 64 / 12, <mysticalagriculture:inferium_arrow>);

// Prudentium
scripts.Base.registerMetal("Prudentium", <liquid:prudentium>, oreDict.ingotPrudentium.firstItem, false, oreDict.blockPrudentium.firstItem, false, 
    oreDict.nuggetPrudentium.firstItem, null, null, null, null);

// Intermedium
scripts.Base.registerMetal("Intermedium", <liquid:intermedium>, oreDict.ingotIntermedium.firstItem, false, oreDict.blockIntermedium.firstItem, false, 
    oreDict.nuggetIntermedium.firstItem, null, null, null, null);

// Superium
scripts.Base.registerMetal("Superium", <liquid:superium>, oreDict.ingotSuperium.firstItem, false, oreDict.blockSuperium.firstItem, false, 
    oreDict.nuggetSuperium.firstItem, null, null, null, null);

// Supremium
scripts.Base.registerMetal("Supremium", <liquid:supremium>, oreDict.ingotSupremium.firstItem, false, oreDict.blockSupremium.firstItem, false, 
    oreDict.nuggetSupremium.firstItem, null, null, null, null);

// Insanium
scripts.Base.registerMetal("Insanium", <liquid:insanium>, oreDict.ingotInsanium.firstItem, false, oreDict.blockInsanium.firstItem, false, 
    oreDict.nuggetInsanium.firstItem, null, null, null, null);

// Soulium
scripts.Base.registerMetal("Soulium", <liquid:soulium>, oreDict.ingotSoulium.firstItem, false, oreDict.blockSoulium.firstItem, false, 
    oreDict.nuggetSoulium.firstItem, oreDict.dustSoulium.firstItem, null, null, null);
scripts.Base.registerTools("Soulium", <liquid:soulium>, <mysticalagriculture:soulium_dagger>, 2);

// Mekanism ///////////////////////////////////////////

// Refined Obsidian
scripts.Base.registerMetal("RefinedObsidian", null, oreDict.ingotRefinedObsidian.firstItem, false, oreDict.blockRefinedObsidian.firstItem, false, 
    oreDict.nuggetRefinedObsidian.firstItem, oreDict.dustRefinedObsidian.firstItem, null, null, null);

// Osmium
scripts.Base.registerMetal("Osmium", <liquid:osmium>, oreDict.ingotOsmium.firstItem, false, oreDict.blockOsmium.firstItem, false, 
    oreDict.nuggetOsmium.firstItem, oreDict.dustOsmium.firstItem, oreDict.plateOsmium.firstItem, oreDict.gearOsmium.firstItem, oreDict.stickOsmium.firstItem);
scripts.Base.registerTools("Osmium", <liquid:osmium>, <mekanism:gaugedropper>, 1);

// Glowstone
registerMelting(<liquid:glowstone>, 250, <mekanism:ingot:3>);
registerMelting(<liquid:glowstone>, 2250, <mekanism:basicblock:4>);
registerMelting(<liquid:glowstone>, 250 / 9, <mekanism:nugget:3>);
registerMelting(<liquid:glowstone>, 250, <minecraft:glowstone_dust>);
// registerMelting(<liquid:glowstone>, 4000, <simplyjetpacks:metaitemmods:28>);
registerMelting(<liquid:glowstone>, 1000, <minecraft:glowstone>);
registerMelting(<liquid:glowstone>, 1000, <charm:smooth_glowstone>);

oreDict.blockGlowstone.add(<minecraft:glowstone>, <charm:smooth_glowstone>);
oreDict.blockRefinedGlowstone.add(<mekanism:basicblock:4>);
oreDict.dustGlowstone.add(<minecraft:glowstone_dust>);
oreDict.ingotGlowstone.add(<mekanism:ingot:3>);
oreDict.ingotRefinedGlowstone.add(<mekanism:ingot:3>);
oreDict.nuggetGlowstone.add(<mekanism:nugget:3>);
oreDict.nuggetRefinedGlowstone.add(<mekanism:nugget:3>);

scripts.Base.registerDust(<minecraft:glowstone_dust>, <mekanism:ingot:3>);
scripts.Base.registerDustForge(<mekanism:ingot:3>, <minecraft:glowstone_dust>);

// Ender
registerMelting(<liquid:ender>, 250, <minecraft:ender_pearl>);
registerMelting(<liquid:ender>, 250, <thermalfoundation:material:895>);
registerMelting(<liquid:ender>, 250, <appliedenergistics2:material:46>);
registerMelting(<liquid:ender>, 2250, <charm:ender_pearl_block>);
registerMelting(<liquid:ender>, 250 / 8, <extrautils2:endershard>);
registerMelting(<liquid:ender>, 1000, <actuallyadditions:block_misc:6>);

oreDict.gemEnderpearl.add(<minecraft:ender_pearl>);
oreDict.dustEnderpearl.add(<appliedenergistics2:material:46>);
oreDict.blockEnderpearl.add(<charm:ender_pearl_block>);
oreDict.blockEnderpearl.add(<actuallyadditions:block_misc:6>);
oreDict.shardEnderpearl.add(<extrautils2:endershard>);

scripts.Base.registerDust(<appliedenergistics2:material:46>, <minecraft:ender_pearl>);
mods.mekanism.enrichment.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>);

// Draconic Evolution ///////////////////////////////////////////

// Draconium
scripts.Base.registerMetal("Draconium", null, oreDict.ingotDraconium.firstItem, false, oreDict.blockDraconium.firstItem, false, 
    oreDict.nuggetDraconium.firstItem, oreDict.dustDraconium.firstItem, null, null, null);

// Awakened Draconium
scripts.Base.registerMetal("DraconiumAwakened", null, oreDict.ingotDraconiumAwakened.firstItem, false, oreDict.blockDraconiumAwakened.firstItem, false, 
    oreDict.nuggetDraconiumAwakened.firstItem, null, null, null, null);

// Others ///////////////////////////////////////////

// Certus Quartz
scripts.Base.registerMetal("CertusQuartz", null, oreDict.gemCertusQuartz.firstItem, true, oreDict.blockCertusQuartz.firstItem, true, 
    oreDict.nuggetCertusQuartz.firstItem, oreDict.dustCertusQuartz.firstItem, oreDict.plateCertusQuartz.firstItem, oreDict.gearCertusQuartz.firstItem, oreDict.stickCertusQuartz.firstItem);

// Black Quartz
scripts.Base.registerMetal("QuartzBlack", null, oreDict.gemQuartzBlack.firstItem, true, oreDict.blockQuartzBlack.firstItem, true, 
    oreDict.nuggetQuartzBlack.firstItem, oreDict.dustQuartzBlack.firstItem, oreDict.plateQuartzBlack.firstItem, oreDict.gearQuartzBlack.firstItem, oreDict.stickQuartzBlack.firstItem);

// Ender Biotite
scripts.Base.registerMetal("EnderBiotite", null, oreDict.gemEnderBiotite.firstItem, true, oreDict.blockEnderBiotite.firstItem, true, 
    oreDict.nuggetEnderBiotite.firstItem, oreDict.dustEnderBiotite.firstItem, oreDict.plateEnderBiotite.firstItem, oreDict.gearEnderBiotite.firstItem, oreDict.stickEnderBiotite.firstItem);

// Clay
registerMelting(<liquid:clay>, 144, <minecraft:clay_ball>);
registerMelting(<liquid:clay>, 144, <minecraft:brick>);
registerMelting(<liquid:clay>, 576, <minecraft:clay>);
registerMelting(<liquid:clay>, 576, <minecraft:hardened_clay>);
registerMelting(<liquid:clay>, 576, <minecraft:brick_block>);
registerMelting(<liquid:clay>, 72 * 6, <minecraft:brick_stairs>);
registerMelting(<liquid:clay>, 288, <minecraft:stone_slab:4>);
registerMelting(<liquid:clay>, 576 * 7, <cfm:mantel_piece>);
// registerMelting(<liquid:clay>, 576 * 6, <futureminecraf:brickwall>);
registerMelting(<liquid:clay>, 576 * 6, <quark:brick_wall>);

// Sand
registerMelting(<liquid:glass>, 1000, <minecraft:sand>);
registerMelting(<liquid:glass>, 1000, <minecraft:sand:1>);
registerMelting(<liquid:glass>, 4000, <minecraft:sandstone>);
registerMelting(<liquid:glass>, 4000, <minecraft:sandstone:1>);
registerMelting(<liquid:glass>, 4000, <minecraft:sandstone:2>);
registerMelting(<liquid:glass>, 4000, <minecraft:red_sandstone>);
registerMelting(<liquid:glass>, 4000, <minecraft:red_sandstone:1>);
registerMelting(<liquid:glass>, 4000, <minecraft:red_sandstone:2>);
registerMelting(<liquid:glass>, 3000, <minecraft:sandstone_stairs>);
registerMelting(<liquid:glass>, 3000, <minecraft:red_sandstone_stairs>);
registerMelting(<liquid:glass>, 2000, <minecraft:stone_slab:1>);
registerMelting(<liquid:glass>, 2000, <minecraft:stone_slab2>);
// registerMelting(<liquid:glass>, 4000, <futureminecraf:smoothsandstone>);
// registerMelting(<liquid:glass>, 4000, <futureminecraf:redsmoothsandstone>);
// registerMelting(<liquid:glass>, 3000, <futureminecraf:smoothsandstonestairs>);
// registerMelting(<liquid:glass>, 3000, <futureminecraf:smoothredsandstonestairs>);
// registerMelting(<liquid:glass>, 2000, <futureminecraf:smoothsandstoneslab>);
// registerMelting(<liquid:glass>, 2000, <futureminecraf:redsmoothsandstoneslab>);
// registerMelting(<liquid:glass>, 4000, <futureminecraf:sandstonewall>);
// registerMelting(<liquid:glass>, 4000, <futureminecraf:redsandstonewall>);
// registerMelting(<liquid:glass>, 1000, <futureminecraf:cutsandstoneslab>);
// registerMelting(<liquid:glass>, 1000, <futureminecraf:cutredsandstoneslab>);
registerMelting(<liquid:glass>, 4000, <quark:sandstone_new>);
registerMelting(<liquid:glass>, 4000, <quark:sandstone_new:1>);
registerMelting(<liquid:glass>, 4000, <quark:sandstone_new:2>);
registerMelting(<liquid:glass>, 4000, <quark:sandstone_new:3>);
registerMelting(<liquid:glass>, 3000, <quark:sandstone_bricks_stairs>);
registerMelting(<liquid:glass>, 3000, <quark:red_sandstone_bricks_stairs>);
registerMelting(<liquid:glass>, 2000, <quark:sandstone_smooth_slab>);
registerMelting(<liquid:glass>, 2000, <quark:red_sandstone_smooth_slab>);
registerMelting(<liquid:glass>, 2000, <quark:sandstone_bricks_slab>);
registerMelting(<liquid:glass>, 2000, <quark:red_sandstone_bricks_slab>);
registerMelting(<liquid:glass>, 4000, <quark:sandstone_wall>);
registerMelting(<liquid:glass>, 4000, <quark:red_sandstone_wall>);
registerMelting(<liquid:glass>, 2000, <of:sand_path>);
registerMelting(<liquid:glass>, 2000, <of:sand_path:1>);
registerMelting(<liquid:glass>, 1000, <minecraft:glass>);
registerMelting(<liquid:glass>, 375, <minecraft:glass_pane>);
registerMelting(<liquid:glass>, 1000, <minecraft:glass_bottle>);
registerMelting(<liquid:glass>, 2500, <tconstruct:fancy_frame:6>);
// registerMelting(<liquid:glass>, 7000, <environmentaltech:laser_lens>);
registerMelting(<liquid:glass>, 250, <quark:glass_shards>);
registerMelting(<liquid:glass>, 375, <of:glass_roof>);
registerMelting(<liquid:glass>, 375, <thaumcraft:phial>);
registerMelting(<liquid:glass>, 375 * 7, <cfm:item_cup>);
registerMelting(<liquid:glass>, 375 * 5, <cfm:cookie_jar>);
registerMelting(<liquid:glass>, 375 * 7, <thaumcraft:jar_normal>);
registerMelting(<liquid:glass>, 375 * 7, <thaumcraft:jar_void>);
registerMelting(<liquid:glass>, 375 * 4, <quark:glass_item_frame>);
registerMelting(<liquid:glass>, 375, <astralsorcery:itemcraftingcomponent:3>);
registerMelting(<liquid:glass>, 1000, <bloodarsenal:blood_stained_glass>);
registerMelting(<liquid:glass>, 375, <bloodarsenal:blood_stained_glass_pane>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativesolid:4>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass:1>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass:2>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass:3>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass:4>);
registerMelting(<liquid:glass>, 1000, <extrautils2:decorativeglass:5>);
registerMelting(<liquid:glass>, 1000, <extrautils2:ineffableglass>);
registerMelting(<liquid:glass>, 1000, <extrautils2:ineffableglass:1>);
registerMelting(<liquid:glass>, 1000, <extrautils2:ineffableglass:2>);
registerMelting(<liquid:glass>, 1000, <extrautils2:ineffableglass:3>);
registerMelting(<liquid:glass>, 3000, <of:item_display:1>);
registerMelting(<liquid:glass>, 1000, <tconstruct:clear_glass>);

// dirt
registerMelting(<liquid:dirt>, 144, <minecraft:dirt>);
registerMelting(<liquid:dirt>, 144, <minecraft:dirt:1>);

// I FORGOT HORSE ARMORS
scripts.Base.registerTools("Iron", <liquid:iron>, <minecraft:iron_horse_armor>, 4);
scripts.Base.registerTools("Gold", <liquid:gold>, <minecraft:golden_horse_armor>, 4);
scripts.Base.registerTools("Diamond", null, <minecraft:diamond_horse_armor>, 4);
scripts.Base.registerTools("Copper", <liquid:copper>, <thermalfoundation:horse_armor_copper>, 4);
scripts.Base.registerTools("Tin", <liquid:tin>, <thermalfoundation:horse_armor_tin>, 4);
scripts.Base.registerTools("Silver", <liquid:silver>, <thermalfoundation:horse_armor_silver>, 4);
scripts.Base.registerTools("Lead", <liquid:lead>, <thermalfoundation:horse_armor_lead>, 4);
scripts.Base.registerTools("Aluminum", <liquid:aluminum>, <thermalfoundation:horse_armor_aluminum>, 4);
scripts.Base.registerTools("Nickel", <liquid:nickel>, <thermalfoundation:horse_armor_nickel>, 4);
scripts.Base.registerTools("Platinum", <liquid:platinum>, <thermalfoundation:horse_armor_platinum>, 4);
scripts.Base.registerTools("Steel", <liquid:steel>, <thermalfoundation:horse_armor_steel>, 4);
scripts.Base.registerTools("Electrum", <liquid:electrum>, <thermalfoundation:horse_armor_electrum>, 4);
scripts.Base.registerTools("Invar", <liquid:invar>, <thermalfoundation:horse_armor_invar>, 4);
scripts.Base.registerTools("Bronze", <liquid:bronze>, <thermalfoundation:horse_armor_bronze>, 4);
scripts.Base.registerTools("Constantan", <liquid:constantan>, <thermalfoundation:horse_armor_constantan>, 4);

registerMelting(<liquid:blood>, 160, <tconstruct:edible:3>);