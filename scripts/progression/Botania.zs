import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.jei.JEI.addDescription(<botanicadds:gaiasteel_ingot>,"Infuse \u00a75Pixie Dust\u00a7r, \u00a75Dragonstone\u00a7r and \u00a72Gaia Spirit Ingot\u00a7r on a \u00a71Gaia Agglomertation Plate\u00a7r.");
mods.botania.ElvenTrade.addRecipe([<minecraft:end_portal_frame>], [<botania:alfheimportal>]);
mods.botania.ElvenTrade.addRecipe([<randomportals:vertical_end_portal_frame>], [<minecraft:end_portal_frame>]);
mods.botania.ElvenTrade.addRecipe([<randomportals:upside_down_end_portal_frame>], [<randomportals:vertical_end_portal_frame>]);
mods.botania.ElvenTrade.addRecipe([<minecraft:end_portal_frame>], [<randomportals:upside_down_end_portal_frame>]);
mods.botania.ElvenTrade.addRecipe([<minecraft:blaze_rod>], [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]);
mods.botania.ElvenTrade.addRecipe([<netherbackport:cryingobsidian>], [<minecraft:obsidian>]);
mods.botania.ElvenTrade.addRecipe([<netherbackport:gildedblackstone>], [<netherbackport:blackstone>]);
mods.botania.ElvenTrade.addRecipe([<botania:spreader:2>], [<botania:spreader>]);
mods.botania.Orechid.removeOre(<ore:oreMithril>);
recipes.remove(<extrabotany:natureorb>);
mods.thaumcraft.Infusion.registerRecipe("natureOrbStuff", "INFUSION", <extrabotany:natureorb>, 250, [<aspect:herba> * 12345, <aspect:terra> * 54321], <contenttweaker:heart_of_all_seeds>, [<extrabotany:material:5>, <draconicevolution:draconium_dust>, <extrabotany:material:8>, <draconicevolution:draconium_dust>, <extrabotany:material:5>, <draconicevolution:draconium_dust>, <extrabotany:material:8>, <draconicevolution:draconium_dust>]);
recipes.remove(<extrabotany:material:6>);
mods.thaumcraft.Infusion.registerRecipe("challengeTicketStuff", "INFUSION", <extrabotany:material:6>, 250, [<aspect:herba> * 1000], <contenttweaker:medal_fragment>, [<contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>]);
recipes.addShapeless("medal_fragmenting", <contenttweaker:medal_fragment> * 4, [<extrabotany:material:3>]);
recipes.addShapeless("medal_combining", <extrabotany:material:3>, [<contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>]);
recipes.remove(<extrabotany:elvenking>);
mods.thaumcraft.Infusion.registerRecipe("elvenKing", "INFUSION", <extrabotany:elvenking>, 125, [<aspect:sol> * 500, <aspect:caeles> * 100, <aspect:terra> * 2500, <aspect:tempus> * 2000], <botania:pixiering>, [<botania:astrolabe>, <astralsorcery:itemcraftingcomponent:2>, <botania:goddesscharm>, <contenttweaker:astralite_dust>, <botania:blackholetalisman>, <astralsorcery:itemcraftingcomponent:2>, <botania:thirdeye>, <contenttweaker:astralite_dust>]);
// mods.botania.RuneAltar.removeRecipe(<Botania:rune>);
// mods.botania.RuneAltar.addRecipe(<minecraft:planks>,[<minecraft:grass>, <minecraft:dirt>], 200);
// mods.botania.Lexicon.addRunePage(String name, String entry, int page_number, IItemStack[] outputs, IIngredient[][] inputs, int[] mana);
recipes.remove(<extrabotany:material:9>);
mods.astralsorcery.Altar.addTraitAltarRecipe("prod:shaped/internal/altar/herrscherofthevoid", <extrabotany:material:9>, 4500, 36000, [
    <draconicevolution:dislocator_advanced>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <draconicevolution:dislocator_advanced>,
    runeAdv(<contenttweaker:rune_of_the_universe>, 11), <extrabotany:coregod>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), 
    <draconicevolution:dislocator_advanced>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <draconicevolution:dislocator_advanced>,
    <contenttweaker:pure_parchment>, <contenttweaker:pure_parchment>, <contenttweaker:pure_parchment>, <contenttweaker:pure_parchment>, 
    <botania:goddesscharm>, <bewitchment:leonards_wand>, <bewitchment:caduceus>, <botania:goddesscharm>, <botania:goddesscharm>, <bewitchment:caduceus>, <bewitchment:leonards_wand>, <botania:goddesscharm>, 
    <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>,<contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>,
    //Outer Items, indices 25+
    <draconicevolution:draconic_energy_core>, <draconicevolution:reactor_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:reactor_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:reactor_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:reactor_core>
],
"astralsorcery.constellation.vorux");

// maid
recipes.remove(<extrabotany:combatmaidhelm>);
recipes.remove(<extrabotany:combatmaidhelmrevealing>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorhelmet", <extrabotany:combatmaidhelmrevealing>, 4500, 1200, [
    <contenttweaker:fabric_of_the_cosmos>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidhelmrevealing>, <contenttweaker:fabric_of_the_cosmos>, 
    null, <bewitchment:sigil_binding>, null, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <planarartifice:alkimium_goggles>, <botania:terrasteelhelmreveal>,
    <embers:ashen_cloak_head>, <actuallyadditions:item_engineer_goggles_advanced>, <extrabotany:material:10>, <extrabotany:material:10>, null, null
]);
recipes.remove(<extrabotany:combatmaidchest>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorchestplate", <extrabotany:combatmaidchest>, 4500, 1200, [
    <contenttweaker:fabric_of_the_cosmos>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidchest>, <contenttweaker:fabric_of_the_cosmos>, 
    runeAdv(<contenttweaker:rune_of_the_universe>, 11), <bewitchment:sigil_battle>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, 
    <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:material:10>, <extrabotany:material:10>, <extrautils2:lawsword>, <extrabotany:mastermanaring>, <soot:essence>.withTag({type: "regeneration"}), <ebwizardry:astral_diamond>
]); // change soot essence
recipes.remove(<extrabotany:combatmaidlegs>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorlegs", <extrabotany:combatmaidlegs>, 4500, 1200, [
    <contenttweaker:pure_parchment>, <bewitchment:sigil_mending>, <contenttweaker:pure_parchment>, <tconevo:metal:33>, <extrabotany:cosmeticmaidlegs>, <bloodarsenal:blood_diamond:3>, <contenttweaker:fabric_of_the_cosmos>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <contenttweaker:fabric_of_the_cosmos>,
    null, null, <botania:divacharm>, <botania:divacharm>, null, null, null, null, <botania:dice>, <futuremc:netherite_leggings>, <botania:divacharm>, <botania:divacharm>
]);
recipes.remove(<extrabotany:combatmaidboots>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorboots", <extrabotany:combatmaidboots>, 4500, 1200, [
    null, <bewitchment:sigil_purity>, null, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidboots>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <contenttweaker:fabric_of_the_cosmos>, 
    <extrabotany:material:10>, <extrabotany:material:10>, <botania:divacharm>, <botania:divacharm>, null, null, <botania:divacharm>, <botania:divacharm>, <botania:knockbackbelt>, <bewitchment:girdle_of_the_dryads>, <immersiveengineering:skyhook>, <minecraft:rabbit_foot>
]);
mods.botania.RuneAltar.removeRecipe(<extrabotany:combatmaidchestdarkened>);
mods.astralsorcery.Altar.addTraitAltarRecipe("prod:shaped/internal/altar/shadowmaid", <extrabotany:combatmaidchestdarkened>, 4500, 3600, [
    <extrabotany:shadowwarriorhelm>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <extrabotany:shadowwarriorchest>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:combatmaidchest>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:shadowwarriorlegs>, runeAdv(<contenttweaker:rune_of_the_universe>, 11), <extrabotany:shadowwarriorboots>,
    <extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>, <botania:divacharm>, <extrabotany:material:10>, <extrabotany:material:10>, <botania:divacharm>, <botania:divacharm>, <extrabotany:material:10>, <extrabotany:material:10>, <botania:divacharm>, 
    <thaumicwonders:night_vision_goggles>, <thaumadditions:the_beheader>, <ebwizardry:master_sorcery_wand>, <extrabotany:shadowkatana>, 
    <contenttweaker:astralite>, <contenttweaker:pure_parchment>, <contenttweaker:astralite>, <contenttweaker:pure_parchment>, <contenttweaker:astralite>, <contenttweaker:pure_parchment>
],
"astralsorcery.constellation.alcara");
recipes.remove(<extrabotany:manareader>);
recipes.addShapedMirrored("manareader", <extrabotany:manareader>, [[null, <extrabotany:material:8>, <ebwizardry:grand_crystal>], [null, <botania:manaresource:13>, <extrabotany:material:8>], [<botania:manaresource:13>, null, null]]);
recipes.remove(<extrabotany:binder>);
recipes.addShapedMirrored("positionbinder", <extrabotany:binder>, [[null, <extrabotany:material:5>, <ebwizardry:grand_crystal>], [null, <botania:manaresource:13>, <extrabotany:material:5>], [<botania:manaresource:13>, null, null]]);
recipes.remove(<extrabotany:walkingcane>);
recipes.addShapedMirrored("walkingcane", <extrabotany:walkingcane>, [[null, <botania:livingrock>, <extrabotany:spiritfuel>], [null, <thaumicwands:item_wand_rod:7>, null], [<thaumicwands:item_wand_rod:7>, null, null]]);
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:1>);
recipes.remove(<extrabotany:spearsubspace>);
recipes.remove(<botanicadds:terra_protector>);

recipes.remove(<botania:tornadorod>);
recipes.remove(<botania:diviningrod>);
recipes.remove(<botania:terraformrod>);
recipes.remove(<botania:smeltrod>);
recipes.remove(<botania:exchangerod>);

mods.extrabotany.ManaInfusion.addDimension(<bewitchment:dimensional_sand> * 2, <nuclearcraft:compound:8>, 500);
mods.extrabotany.Lexicon.addDimensionPage("prod.page.dimensioncatalystCustom", "botania.entry.dimensioncatalyst", 4, [<bewitchment:dimensional_sand> * 2], [<nuclearcraft:compound:8>], [500]);
mods.botania.Lexicon.removePage("botania.entry.dimensioncatalyst", 2);
mods.botania.ManaInfusion.removeRecipe(<minecraft:blaze_rod> * 2);
mods.botania.ManaInfusion.addConjuration(<minecraft:blaze_powder> * 2, <minecraft:blaze_powder>, 5000);
mods.botania.Lexicon.addConjurationPage("prod.page.manaConjurationCustom", "botania.entry.manaConjuration", 4, [<minecraft:blaze_powder> * 2], [<minecraft:blaze_powder>], [20000]);

//////////////////////////////////////////////////////
/////////////////// RUNECRAFTING /////////////////////
//////////////////////////////////////////////////////
function addRune(tier as int, page as int, outputs as IItemStack[], inputs as IIngredient[][], mana as int[]) {
    for j in 0 .. outputs.length {
        val i = outputs.length - j - 1;
        mods.botania.RuneAltar.removeRecipe(outputs[i]);
        mods.botania.RuneAltar.addRecipe(outputs[i], inputs[i], mana[i]);
        mods.botania.Lexicon.addRunePage("prod.page.rune" ~ tier ~ "Tier" ~ page ~ "variant" ~ i, "prod.entry.rune" ~ tier ~ "Tier", 0, [outputs[i]], [inputs[i]], [mana[i]]);
    }
}
function addText(tier as string, page as int, amount as int) {
    for j in 0 .. amount {
        mods.botania.Lexicon.addTextPage("prod.page.rune" ~ tier ~ "Tier" ~ page ~ "page" ~ (amount - j - 1), "prod.entry.rune" ~ tier ~ "Tier", 0);
    }
}
function addEntry(tier as string, icon as IItemStack, knowledgeType as string) {
    mods.botania.Lexicon.addEntry("prod.entry.rune" ~ tier ~ "Tier", "prod.category.runecrafting", icon);
    mods.botania.Lexicon.setEntryKnowledgeType("prod.entry.rune" ~ tier ~ "Tier", knowledgeType);
}
function runeJEIGlint(item as IItemStack, color as int) {    
    // mods.jei.JEI.hide(item);
    mods.jei.JEI.addItem(item.withTag({"Quark:RuneColor": color, "Quark:RuneAttached": 1 as byte}));
}
function runeAdv(item as IItemStack, color as int) as IItemStack {
    return item.withTag({"Quark:RuneColor": color, "Quark:RuneAttached": 1 as byte});
}
mods.botania.Lexicon.addCategory("prod.category.runecrafting");
mods.botania.Lexicon.setCategoryIcon("prod.category.runecrafting", "botania:textures/items/rune13.png");
/***********  Delete Runic Altar Pages *********/
for page in 0 .. 18 {
    mods.botania.Lexicon.removePage("botania.entry.runeAltar", (24 - page));
}
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 6);
mods.botania.Lexicon.addTextPage("prod.page.runeAltarCustom", "botania.entry.runeAltar", 6);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 4);
/******************  Tier 0 ********************/
addEntry('0', <contenttweaker:blank_rune>, "minecraft"); // livingrock
addRune('0', 7, [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:blank_rune_advanced>], [
    [<contenttweaker:blank_rune>, <contenttweaker:blank_rune_darkened>, <contenttweaker:aura_infused_thaumium_plate>, <planarartifice:condensed_crystal_cluster>, <extrautils2:suncrystal:0>, <embers:ember_cluster>],
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:blank_rune_bifrost>, <embers:shifting_scales>, <planarartifice:alchemical_alkimium_construct>, <ebwizardry:astral_diamond>, <threng:material:14>]
], [12000, 25200]);
addText('0', 6, 3);
/*
 * &o...Come to think of it, &5they &r&oweren't the only arts of magic capable of doing dark stuff.
 * This &npower&r&o... this &nenergy&r&o... It is just too much to control.
 * By infusing the modified, darkened rune with the original, with some modern constructs used normally for earthen alchemy, the result is crafted.
 * This stuff is expensive... hopefully runecrafting doesn't get more complex than this... wait, since when was I talking in first-&rperson? hold up.
 * You can craft the most advanced version of the &1Blank Rune&r with some &1Alchemical Mediator&r.
 */
addRune('0', 5, [<contenttweaker:blank_rune_bifrost>], [[<contenttweaker:blank_rune>, <botania:bifrostperm>, <contenttweaker:hue_infused_thaumium_plate>]], [8000]);
addText('0', 4, 1);
/*
 * Recent researches in regards of &1Blank Runes&r also showed that one can use this "basing" technique not only to emulate the old ways of crafting, 
 * but also to channel the power of ancient forces (such as &2The Bifrost&r).
 * <br>
 * The resulting rune is unsurprisingly translucent.
 */
addRune('0', 3, [<contenttweaker:blank_rune_darkened>], [[<contenttweaker:blank_rune>, <harvestcraft:squidinkspaghettiitem>, <thaumicrestoration:item_plate:5>]], [5200]);
addText('0', 2, 2);
/*
 * ...However, the insurgence in &5Thaumaturgy&r wasn't all bad for the Botanists themselves, 
 * as they were able to use some of the knowledge of the quickly advancing field of &5Thaumaturgy&r alongside their runecrafting to 
 * unlock the means to control the nature in ways it was never possible. 
 * <br>
 * To contain the darker energies of the foreign magic, we must modify the base of the runes themselves. 
 */
// custom material - no remove needed
addRune('0', 1, [<contenttweaker:blank_rune> * 8], [[<botania:livingrock>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]})]], [2520]);
addText('0', 0, 2);
/*
 * Because of the rise in popularity for the much direct &8(but morally grey)&r way of interacting with the local magical aura; a la &5Thaumaturges&r,
 * &2Botanists&r had to invent more creative ways to channel the aura, which lead to the increase in difficulty and complexity when it comes to crafting runes.
 * <br>
 * Now, You must craft a &1Blank Rune&r before making any sort of runes. thankfully, it is pretty simple to make.
 */
/******************  Tier 1 ********************/
addEntry('1', <botania:rune>, "minecraft"); // manasteel
addRune('1', 3, [<botania:rune:8> * 2], 
[[<botania:manaresource:1>, <botania:manaresource>, <thaumcraft:fabric>, <contenttweaker:blank_rune>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <contenttweaker:inert_aethoria_dust>]], [5200]);
addText('1', 2, 1); // explaining lore
addRune('1', 1, [<botania:rune> * 2, <botania:rune:1> * 2, <botania:rune:2> * 2, <botania:rune:3> * 2], [
    [<botania:manaresource:23>, <botania:manaresource>, <contenttweaker:blank_rune>, <minecraft:fish:2>, <actuallyadditions:item_water_bowl>, <ore:gemAquamarine>], // water
    [<botania:manaresource:23>, <botania:manaresource>, <contenttweaker:blank_rune>, <netherbackport:weepingvines>, <minecraft:fire_charge>, <bewitchment:bottled_hellfire>], // fire
    [<botania:manaresource:23>, <botania:manaresource>, <contenttweaker:blank_rune>, <quark:root>, <tconstruct:materials:19>, <botania:grassseeds:5>], // earth
    [<botania:manaresource:23>, <botania:manaresource>, <contenttweaker:blank_rune>, <mysticalagriculture:crafting:24>, <bewitchment:ravens_feather>, <appliedenergistics2:material:45>] // air
], [5200, 5200, 5200, 5200]);
addText('1', 0, 1); // explaining lore
/******************  Tier 2 ********************/
addEntry('2', <botania:rune:4>, "minecraft"); // mana diamond
addRune('2', 3, [<botania:rune:4>, <botania:rune:5>, <botania:rune:6>, <botania:rune:7>], [
    [<botania:rune:1>, <contenttweaker:attuned_rune_0>, <botania:manaresource:2>, <harvestcraft:cherrycheesecakeitem>, <thaumcraft:shimmerleaf>, <thermalfoundation:fertilizer>, <mysticalagriculture:crafting:10>], // spring
    [<botania:rune:2>, <contenttweaker:attuned_rune_3>, <botania:manaresource:2>, <harvestcraft:carrotcakeitem>, <harvestcraft:blazingsoupitem>, <thaumicrestoration:item_shard>, <thaumcraft:amber>], // summer
    [<botania:rune:0>, <contenttweaker:attuned_rune_2>, <botania:manaresource:2>, <harvestcraft:pumpkincheesecakeitem>, <mia:flower_dead>, <extrautils2:magicapple>, <extrabotany:gildedmashedpotato>], // autumn
    [<botania:rune:3>, <contenttweaker:attuned_rune_1>, <botania:manaresource:2>, <harvestcraft:redvelvetcakeitem>, <bewitchment:perpetual_ice>, <bewitchment:frostflower>, <futuremc:blue_ice>]  // winter
], [8000, 8000, 8000, 8000]);
addText('2', 2, 1);
var inputsAttuned = [] as IIngredient[];
var outputsAttuned = [] as IItemStack[];
var manaAttuned = [] as int[];
for item in 0 .. 16 {
    mods.botania.ManaInfusion.addInfusion(itemUtils.getItem("conenttweaker:attuned_rune_" ~ item), itemUtils.getItem("botania:rune", item), 1000);
    inputsAttuned += itemUtils.getItem("botania:rune", item);
    outputsAttuned += itemUtils.getItem("conenttweaker:attuned_rune_" ~ item);
    manaAttuned += 1000;
}
mods.botania.Lexicon.addInfusionPage("prod.page.rune2Tier1", "prod.entry.rune2Tier", 0, outputsAttuned, inputsAttuned, manaAttuned);
addText('2', 0, 1);
/******************  Tier 3 ********************/
addEntry('3', <botanicadds:rune_energy>, "alfheim"); // dragonstone
addRune('3', 1, [<botanicadds:rune_energy>, <botanicadds:rune_tp>], [
    [<contenttweaker:attuned_rune_8>, <botania:rune:1>, <botania:manaresource:9>, <botania:manaresource:9>, <thermalfoundation:material:894>, <nuclearcraft:compound:2>], // energy
    [<contenttweaker:attuned_rune_8>, <botania:rune:2>, <botania:manaresource:9>, <botania:manaresource:9>, <thermalfoundation:material:895>, <bewitchment:dimensional_sand>], // tp
], [12000, 12000]);
addText('3', 0, 2);
/******************  Tier 4 ********************/
addEntry('4', <botania:rune:11>, "alfheim"); // gaia ingot 25000 mana
addText('4', 2, 2);
addRune('4', 1, [<botania:rune:9>, <botania:rune:10>, <botania:rune:11>, <botania:rune:12>, <botania:rune:13>, <botania:rune:14>, <botania:rune:15>, <contenttweaker:rune_of_guilt>], [
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_4>, <botanicadds:rune_tp>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // lust
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_5>, <botanicadds:rune_tp>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // gluttony
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_5>, <botanicadds:rune_energy>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // greed
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_6>, <botanicadds:rune_tp>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // sloth
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_6>, <botanicadds:rune_energy>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // wrath
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_7>, <botanicadds:rune_energy>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // envy
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_4>, <botanicadds:rune_energy>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>], // pride
    [<contenttweaker:blank_rune_advanced_crude>, <contenttweaker:attuned_rune_7>, <botanicadds:rune_tp>, <botania:manaresource:14>, <botania:manaresource:14>, <ebwizardry:grand_crystal>, <thaumicrestoration:block_crystal>.withTag({aspect: "caeles"})]  // guilt
], [25600, 25600, 25600, 25600, 25600, 25600, 25600, 25600]);
addText('4', 0, 2);
/******************  Tier 5 ********************/
addEntry('5', <contenttweaker:rune_of_space>, "alfheim"); // bismuth // 80000 mana
addRune('5', 1, [<contenttweaker:rune_of_space>, <contenttweaker:rune_of_time>], [
    [<botanicadds:rune_tp>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spatio"}]}), <contenttweaker:attuned_rune_8>, <botania:rune:3>, <contenttweaker:blank_rune_darkened>, <ore:ingotBismuth>, <contenttweaker:aethoria_gear>, <actuallyadditions:item_misc:19>, <bewitchment:otherworldly_tears>], // space
    [<botanicadds:rune_energy>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "tempus"}]}), <contenttweaker:attuned_rune_8>, <botania:rune>, <contenttweaker:blank_rune_darkened>, <ore:ingotBismuth>, <contenttweaker:aethoria_gear>, <soot:signet_antimony>, <botania:hourglass>], // time
], [80000, 80000]);
addText('5', 0, 2);
/******************  Tier 6 ********************/
addEntry('6', <contenttweaker:rune_of_war>, "alfheim"); // void seed // 300000 mana
addRune('6', 1, [<contenttweaker:rune_of_conquest>, <contenttweaker:rune_of_famine>, <contenttweaker:rune_of_war>, <contenttweaker:rune_of_death>], [
    [<contenttweaker:rune_of_time>, <contenttweaker:rune_of_space>, <contenttweaker:attuned_rune_9>, <contenttweaker:attuned_rune_10>, <thaumcraft:void_seed>], // conquest
    [<contenttweaker:rune_of_time>, <contenttweaker:rune_of_space>, <contenttweaker:attuned_rune_13>, <contenttweaker:rune_of_guilt>, <thaumcraft:void_seed>], // famine
    [<contenttweaker:rune_of_time>, <contenttweaker:rune_of_space>, <contenttweaker:attuned_rune_14>, <contenttweaker:attuned_rune_15>, <thaumcraft:void_seed>], // war
    [<contenttweaker:rune_of_time>, <contenttweaker:rune_of_space>, <contenttweaker:attuned_rune_11>, <contenttweaker:attuned_rune_12>, <thaumcraft:void_seed>]  // death
], [300000, 300000, 300000, 300000]);
addText('6', 0, 2);
/******************  Tier 7 ********************/
addEntry('7', <contenttweaker:rune_of_seasons>, "alfheim"); // gaiasteel // 1000000 mana
addRune('7', 3, [<contenttweaker:rune_of_apocalypse>, <contenttweaker:rune_of_will>], [
    [<contenttweaker:blank_rune_darkened>, <contenttweaker:rune_of_conquest>, <contenttweaker:rune_of_famine>, <contenttweaker:rune_of_war>, <contenttweaker:rune_of_death>], // apocalypse
    [<contenttweaker:blank_rune_bifrost>, <contenttweaker:rune_of_apocalypse>, <quark:rune:16>] // will
], [1000000, 1000000, 1000000, 1000000]);
addText('7', 2, 2);
addRune('7', 1, [<contenttweaker:rune_of_elements>, <contenttweaker:rune_of_power>, <contenttweaker:rune_of_seasons>, <contenttweaker:rune_of_humanity>], [
    [<contenttweaker:blank_rune_darkened>, <contenttweaker:attuned_rune_0>, <contenttweaker:attuned_rune_1>, <contenttweaker:attuned_rune_2>, <contenttweaker:attuned_rune_3>, <botanicadds:gaiasteel_ingot>], // elements
    [<contenttweaker:blank_rune_darkened>, <contenttweaker:attuned_rune_8>, <botanicadds:rune_tp>, <botanicadds:rune_energy>, <contenttweaker:rune_of_time>, <contenttweaker:rune_of_space>, <botanicadds:gaiasteel_ingot>], // power
    [<contenttweaker:blank_rune_darkened>, <contenttweaker:attuned_rune_4>, <contenttweaker:attuned_rune_5>, <contenttweaker:attuned_rune_6>, <contenttweaker:attuned_rune_7>, <botanicadds:gaiasteel_ingot>], // seasons
    [<contenttweaker:blank_rune_darkened>, <contenttweaker:attuned_rune_9>, <contenttweaker:attuned_rune_10>, <contenttweaker:attuned_rune_11>, <contenttweaker:attuned_rune_12>, <contenttweaker:attuned_rune_13>, <contenttweaker:attuned_rune_14>, <contenttweaker:attuned_rune_15>, <contenttweaker:rune_of_guilt>, <botanicadds:gaiasteel_ingot>]  // humanity
], [1000000, 1000000, 1000000, 1000000]);
addText('7', 0, 4);
/************  Extras (quark runes) ************/
addEntry('E', <quark:rune:16>, "alfheim"); // elementium
addRune('E', 2, [<quark:rune:16>], [
    []
], [100000]);
val colors = ["White", "Orange", "Magenta", "LightBlue", "Yellow", "Lime", "Pink", "Gray", "LightGray", "Cyan", "Purple", "Blue", "Brown", "Green", "Red", "Black"] as string[];
var outputsColors = [] as IItemStack[];
var inputsColors = [] as IIngredient[][];
var manaColors = [] as int[];
for i in 0 .. 16 {
    outputsColors += itemUtils.getItem("quark:rune", i);
    inputsColors += [oreDict["dye" ~ colors[i]], <contenttweaker:blank_rune_bifrost>, <tconstruct:pattern>, <flintmod:tool_part_flint>] as IIngredient[];
    manaColors += 1000;
}
mods.botania.RuneAltar.addRecipe(outputsColors, inputsColors, manaColors);
mods.botania.Lexicon.addRunePage("prod.page.runeETier1", "prod.entry.runeETier", 0, outputsColors, inputsColors, manaColors);
addText('E', 0, 1);
/******************  Tier 8 ********************/
addEntry('8', runeAdv(<contenttweaker:rune_of_crafting>, 13), "dream"); // primal mote & metal // 2500000 mana
runeJEIGlint(<contenttweaker:rune_of_blood>, 14);
runeJEIGlint(<contenttweaker:rune_of_sacrifice>, 10);
runeJEIGlint(<contenttweaker:rune_of_life>, 13);
runeJEIGlint(<contenttweaker:rune_of_magic>, 6);
runeJEIGlint(<contenttweaker:rune_of_colors>, 16);
runeJEIGlint(<contenttweaker:rune_of_worlds>, 5);
runeJEIGlint(<contenttweaker:rune_of_crafting>, 3);
runeJEIGlint(<contenttweaker:rune_of_stars>, 9);
addRune('8', 1, [runeAdv(<contenttweaker:rune_of_blood>, 14), runeAdv(<contenttweaker:rune_of_sacrifice>, 10), runeAdv(<contenttweaker:rune_of_life>, 2), runeAdv(<contenttweaker:rune_of_magic>, 6), runeAdv(<contenttweaker:rune_of_colors>, 16), runeAdv(<contenttweaker:rune_of_worlds>, 5), runeAdv(<contenttweaker:rune_of_crafting>, 13), runeAdv(<contenttweaker:rune_of_stars>, 9)], [
    [<contenttweaker:rune_of_apocalypse>, <contenttweaker:rune_of_humanity>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_darkened>, <tconstruct:edible:3>, <extrabotany:material:10>, <bloodmagic:blood_shard:1>, <bloodarsenal:blood_diamond>, <bewitchment:adders_fork>, <bloodmagic:blood_orb>, <tconevo:metal:29>], // bloodmagic - blood
    [<contenttweaker:rune_of_apocalypse>, <contenttweaker:rune_of_power>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_bifrost>, <bewitchment:triskelion>, <bewitchment:demon_heart>, <tconevo:metal:34>, <mysticalagriculture:crafting:29>, <mysticalagradditions:stuff:1>, <patchouli:guide_book>.withTag({"patchouli:book": "bewitchment:codex_infernalis"})], // bewitchment - sacrifice
    [<contenttweaker:rune_of_will>, <contenttweaker:rune_of_humanity>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_advanced>, <thaumicwonders:transmuter_stone>, <thaumicrestoration:item_primal_modulator>, <thaumcraft:verdant_charm>, <botania:spawnermover>, <harvestcraft:southernstylebreakfastitem>, <thaumicwonders:timewinder>, <thaumicaugmentation:material:5>], // thaumcraft - life
    [<contenttweaker:rune_of_will>, <contenttweaker:rune_of_elements>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_advanced>, <thaumcraft:amulet_vis>, <thaumicrestoration:item_primal_modulator>, <thermalfoundation:material:1028>, <ebwizardry:armour_upgrade>, <thaumicwonders:structure_diviner>, <thaumcraft:bottle_taint>], // thaumcraft - magic
    [<contenttweaker:rune_of_apocalypse>, <contenttweaker:rune_of_elements>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_bifrost>, <soot:essence>.withTag({type: "chaos"}), <thaumadditions:jar_eldritch>.withTag({Aspects: [{amount: 500, key: "tinctura"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "caeles"}]}), <quark:elder_sea_lantern>, <polymancy:item_primewell>, <extrautils2:decorativesolid:8>, <thaumicwands:item_primal_charm>], // botania? - colors
    [<contenttweaker:rune_of_apocalypse>, <contenttweaker:rune_of_seasons>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune_bifrost>, <minecraft:end_crystal>, <bewitchment:sigil_mending>, <botania:worldseed>, <planarartifice:dimensional_curiosity>, <quark:biotite>, <thaumicaugmentation:starfield_glass:1>, <extrabotany:dimensioncatalyst>], // worlds
    [<contenttweaker:rune_of_will>, <contenttweaker:rune_of_power>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune>, <embers:isolated_materia>, <embers:dust_metallurgic>, <threng:machine:3>, <contenttweaker:darmstadtium_gear>, <immersiveengineering:graphite_electrode>, <contenttweaker:industrial_diamond>, <embers:tinker_hammer>], // embers - crafting
    [<contenttweaker:rune_of_will>, <contenttweaker:rune_of_seasons>, <thaumcraft:primordial_pearl>, <tconevo:metal:24>, <contenttweaker:blank_rune>, <ebwizardry:astral_diamond>, <extrabotany:bottledstar>, <of:star>, <harvestcraft:starfruititem>, <botania:specialflower>.withTag({type: "stardustlotus"}), <bewitchment:grimoire_magia>, <minecraft:firework_charge>] // embers - stars
], [2500000, 2500000, 2500000, 2500000, 2500000, 2500000, 2500000, 2500000]);
addText('8', 0, 2);
/******************  Tier 9 ********************/
addEntry('9', runeAdv(<contenttweaker:rune_of_chaos>, 7), "dream"); // mana infused // 8000000 mana
runeJEIGlint(<contenttweaker:rune_of_chaos>, 7);
runeJEIGlint(<contenttweaker:rune_of_souls>, 12);
runeJEIGlint(<contenttweaker:rune_of_bifrost>, 16);
runeJEIGlint(<contenttweaker:rune_of_order>, 0);
// Blood Magic - Rune of Chaos
moretweaker.bloodarsenal.Sanguine.addRecipe(runeAdv(<contenttweaker:rune_of_chaos>, 7), 10000000, <thermalfoundation:material:264>, [runeAdv(<contenttweaker:rune_of_blood>, 14), <bloodarsenal:blood_diamond:3>, runeAdv(<contenttweaker:rune_of_sacrifice>, 10), <bloodarsenal:base_item:9>]);
// Rune of Souls
mods.thaumcraft.Infusion.registerRecipe("runeOfSouls", "INFUSION", runeAdv(<contenttweaker:rune_of_souls>, 12), 150, [<aspect:spiritus> * 2500, <aspect:fabrico> * 1000, <aspect:desiderium> * 1000, <aspect:instrumentum> * 1000, <aspect:sol> * 750, <aspect:luna> * 750, <aspect:stellae> * 750, <aspect:diabolus> * 750, <aspect:infernum> * 750, <aspect:tempus> * 750, <aspect:spatio> * 750, <aspect:tinctura> * 750, <aspect:caeles> * 100], 
    <thermalfoundation:material:264>, [runeAdv(<contenttweaker:rune_of_life>, 2), <thaumicrestoration:item_primal_modulator>, runeAdv(<contenttweaker:rune_of_magic>, 6), <thaumadditions:mithrillium_resonator>]);
// Rune of Bifrost
moretweaker.bewitchment.WitchesRitual.addRecipe("Ritual of the Bifrost Blessings", [runeAdv(<contenttweaker:rune_of_bifrost>, 16)] as IItemStack[], 
    [runeAdv(<contenttweaker:rune_of_colors>, 16), <extrautils2:rainbowgenerator>, runeAdv(<contenttweaker:rune_of_worlds>, 5), <botania:rainbowrod>, <thermalfoundation:material:264>] as IItemStack[], null as string, "thaumicaugmentation:dimensional_fracture", 7777, 1, 3, 1);
// Rune of Order
mods.embers.Alchemy.add(runeAdv(<contenttweaker:rune_of_order>, 0), [<thermalfoundation:material:264>, runeAdv(<contenttweaker:rune_of_crafting>, 13), <contenttweaker:ancient_construct>, runeAdv(<contenttweaker:rune_of_stars>, 9), <contenttweaker:heart_of_all_seeds>], 
    {"iron": 512 .. 1024, "copper": 512 .. 1024, "lead": 512 .. 1024, "silver": 512 .. 1024, "dawnstone": 512 .. 1024});
addText('9', 0, 2);
/****************  Tier 9.999 *******************/
addEntry('A', runeAdv(<contenttweaker:rune_of_the_universe>, 11), "dream"); // photon/shadow/astralite // some ridiculous amount
runeJEIGlint(<contenttweaker:rune_of_awakening>, 1);
runeJEIGlint(<contenttweaker:rune_of_ascension>, 4);
runeJEIGlint(<contenttweaker:rune_of_the_universe>, 11);
addRune('A', 3, [runeAdv(<contenttweaker:rune_of_the_universe>, 11)], [
    [<draconicevolution:draconic_ingot>, <mekanism:teleportationcore>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:charged_aethoria_gear>, runeAdv(<contenttweaker:rune_of_ascension>, 4), runeAdv(<contenttweaker:rune_of_awakening>, 1), <extrabotany:coregod>] // ?????????????????????
], [2147483647]);
addText('A', 2, 1);
addRune('A', 1, [runeAdv(<contenttweaker:rune_of_awakening>, 1), runeAdv(<contenttweaker:rune_of_ascension>, 4)], [
    [<actuallyadditions:item_crystal_empowered:5>, <thaumicrestoration:item_primal_modulator>, <extrautils2:lawsword>, <contenttweaker:astralite_gear>, runeAdv(<contenttweaker:rune_of_chaos>, 7), runeAdv(<contenttweaker:rune_of_order>, 0), runeAdv(<contenttweaker:rune_of_souls>, 12), runeAdv(<contenttweaker:rune_of_bifrost>, 16), <bloodarsenal:sigil_divinity>], // AWAKENING
    [<actuallyadditions:item_crystal_empowered:3>, <thaumadditions:mithrillium_resonator>, <extrautils2:compressedcobblestone:7>, <contenttweaker:astralite_gear>, runeAdv(<contenttweaker:rune_of_chaos>, 7), runeAdv(<contenttweaker:rune_of_order>, 0), runeAdv(<contenttweaker:rune_of_souls>, 12), runeAdv(<contenttweaker:rune_of_bifrost>, 16), <bloodarsenal:sigil_divinity>]  // ASCENSION 
], [9000000, 9000000]);
addText('A', 0, 4);