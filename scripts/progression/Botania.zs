import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.jei.JEI.addDescription(<botanicadds:gaiasteel_ingot>,"Infuse \u00a75Pixie Dust\u00a7r, \u00a75Dragonstone\u00a7r and \u00a72Gaia Spirit Ingot\u00a7r on a \u00a71Gaia Agglomertation Plate\u00a7r.");
mods.botania.ElvenTrade.addRecipe([<minecraft:end_portal_frame>], [<botania:alfheimportal>]);
mods.botania.ElvenTrade.addRecipe([<netherbackport:cryingobsidian>], [<minecraft:obsidian>]);
mods.botania.ElvenTrade.addRecipe([<netherbackport:blackstone>], [<netherbackport:gildedblackstone>]);
mods.botania.Orechid.removeOre(<ore:oreMithril>);
recipes.remove(<extrabotany:natureorb>);
mods.thaumcraft.Infusion.registerRecipe("natureOrbStuff", "INFUSION", <extrabotany:natureorb>, 250, [<aspect:herba> * 12345, <aspect:terra> * 54321], <contenttweaker:heart_of_all_seeds>, [<extrabotany:material:5>, <draconicevolution:draconium_dust>, <extrabotany:material:8>, <draconicevolution:draconium_dust>, <extrabotany:material:5>, <draconicevolution:draconium_dust>, <extrabotany:material:8>, <draconicevolution:draconium_dust>]);
recipes.remove(<extrabotany:material:6>);
mods.thaumcraft.Infusion.registerRecipe("challengeTicketStuff", "INFUSION", <extrabotany:material:6>, 250, [<aspect:herba> * 1000], <contenttweaker:medal_fragment>, [<contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>, <contenttweaker:charged_aethoria_dust>, <draconicevolution:draconium_dust>]);
recipes.addShapeless("medal_fragmenting", <contenttweaker:medal_fragment> * 4, [<extrabotany:material:3>]);
recipes.addShapeless("medal_combining", <extrabotany:material:3>, [<contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>, <contenttweaker:medal_fragment>]);
recipes.remove(<extrabotany:elvenking>);
mods.thaumcraft.Infusion.registerRecipe("elvenKing", "INFUSION", <extrabotany:elvenking>, 125, [<aspect:sol> * 500, <aspect:caeles> * 100, <aspect:terra> * 2500, <aspect:Tempus> * 2000], <botania:pixiering>, [<botania:astrolabe>, <astralsorcery:itemcraftingcomponent:2>, <botania:goddesscharm>, <contenttweaker:astralite_dust>, <botania:blackholetalisman>, <astralsorcery:itemcraftingcomponent:2>, <botania:thirdeye>, <contenttweaker:astralite_dust>]);
// mods.botania.RuneAltar.removeRecipe(<Botania:rune>);
// mods.botania.RuneAltar.addRecipe(<minecraft:planks>,[<minecraft:grass>, <minecraft:dirt>], 200);
// mods.botania.Lexicon.addRunePage(String name, String entry, int page_number, IItemStack[] outputs, IIngredient[][] inputs, int[] mana);
recipes.remove(<extrabotany:material:9>);
mods.astralsorcery.Altar.addTraitAltarRecipe("prod:shaped/internal/altar/herrscherofthevoid", <extrabotany:material:9>, 4500, 36000, [
	<draconicevolution:dislocator_advanced>, <contenttweaker:rune_of_the_universe>, <draconicevolution:dislocator_advanced>,
    <contenttweaker:rune_of_the_universe>, <extrabotany:coregod>, <contenttweaker:rune_of_the_universe>, 
    <draconicevolution:dislocator_advanced>, <contenttweaker:rune_of_the_universe>, <draconicevolution:dislocator_advanced>,
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
	<contenttweaker:fabric_of_the_cosmos>, <contenttweaker:rune_of_the_universe>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidhelmrevealing>, <contenttweaker:fabric_of_the_cosmos>, 
    null, <bewitchment:sigil_binding>, null, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <planarartifice:alkimium_goggles>, <botania:terrasteelhelmreveal>,
    <embers:ashen_cloak_head>, <actuallyadditions:item_engineer_goggles_advanced>, <extrabotany:material:10>, <extrabotany:material:10>, null, null
]);
recipes.remove(<extrabotany:combatmaidchest>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorchestplate", <extrabotany:combatmaidchest>, 4500, 1200, [
	<contenttweaker:fabric_of_the_cosmos>, <contenttweaker:rune_of_the_universe>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidchest>, <contenttweaker:fabric_of_the_cosmos>, 
    <contenttweaker:rune_of_the_universe>, <bewitchment:sigil_battle>, <contenttweaker:rune_of_the_universe>, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, <botania:divacharm>, 
    <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:material:10>, <extrabotany:material:10>, <extrautils2:lawsword>, <extrabotany:mastermanaring>, <soot:essence>.withTag({type: "regeneration"}), <ebwizardry:astral_diamond>
]); // change soot essence
recipes.remove(<extrabotany:combatmaidlegs>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorlegs", <extrabotany:combatmaidlegs>, 4500, 1200, [
	<contenttweaker:pure_parchment>, <bewitchment:sigil_mending>, <contenttweaker:pure_parchment>, <tconevo:metal:33>, <extrabotany:cosmeticmaidlegs>, <bloodarsenal:blood_diamond:3>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:rune_of_the_universe>, <contenttweaker:fabric_of_the_cosmos>,
    null, null, <botania:divacharm>, <botania:divacharm>, null, null, null, null, <botania:dice>, <futuremc:netherite_leggings>, <botania:divacharm>, <botania:divacharm>
]);
recipes.remove(<extrabotany:combatmaidboots>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("prod:shaped/internal/altar/maidarmorboots", <extrabotany:combatmaidboots>, 4500, 1200, [
	null, <bewitchment:sigil_purity>, null, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:cosmeticmaidboots>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:fabric_of_the_cosmos>, <contenttweaker:rune_of_the_universe>, <contenttweaker:fabric_of_the_cosmos>, 
    <extrabotany:material:10>, <extrabotany:material:10>, <botania:divacharm>, <botania:divacharm>, null, null, <botania:divacharm>, <botania:divacharm>, <botania:knockbackbelt>, <bewitchment:girdle_of_the_dryads>, <immersiveengineering:skyhook>, <minecraft:rabbit_foot>
]);
mods.botania.RuneAltar.removeRecipe(<extrabotany:combatmaidchestdarkened>);
mods.astralsorcery.Altar.addTraitAltarRecipe("prod:shaped/internal/altar/shadowmaid", <extrabotany:combatmaidchestdarkened>, 4500, 3600, [
	<extrabotany:shadowwarriorhelm>, <contenttweaker:rune_of_the_universe>, <extrabotany:shadowwarriorchest>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:combatmaidchest>, <contenttweaker:fabric_of_the_cosmos>, <extrabotany:shadowwarriorlegs>, <contenttweaker:rune_of_the_universe>, <extrabotany:shadowwarriorboots>,
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

// RUNECRAFTING
