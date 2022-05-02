import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.text.MCStyle;

var fullTome = <item:akashictome:tome> .withTag(
	{
        "akashictome:is_morphing": 1 as byte,
        "akashictome:data": {
            industrialforegoing: {
                id: "patchouli:guide_book" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Industrial Foregoing's Manual" as string
                    },
                    "patchouli:book": "industrialforegoing:industrial_foregoing" as string,
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Industrial Foregoing's Manual\"}]}" as string
                    }
                }
            },
            tconstruct: {
                id: "tconstruct:materials_and_you" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Materials and You" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Materials and You\"}]}" as string
                    }
                }
            },
            botania: {
                id: "botania:lexicon" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Lexica Botania" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Lexica Botania\"}]}" as string
                    }
                }
            },
            ars_nouveau: {
                id: "ars_nouveau:worn_notebook" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Worn Notebook" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Worn Notebook\"}]}" as string
                    }
                }
            },
            theoneprobe: {
                id: "theoneprobe:probenote" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "The One Probe Read Me" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"The One Probe Read Me\"}]}" as string
                    }
                }
            },
            rftoolsbase: {
                id: "rftoolsbase:manual" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Technology Guide" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Technology Guide\"}]}" as string
                    }
                }
            },
            immersiverailroading: {
                id: "immersiverailroading:item_manual" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Immersive Railroading Manual" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Immersive Railroading Manual\"}]}" as string
                    }
                }
            },
            cookingforblockheads: {
                id: "cookingforblockheads:recipe_book" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Cooking for Blockheads I" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cooking for Blockheads I\"}]}" as string
                    }
                }
            },
            tardis: {
                id: "tardis:manual" as string,
                Count: 1 as byte,
                tag: {
                    "akashictome:displayName": {
                        text: "Manual" as string
                    },
                    "akashictome:is_morphing": 1 as byte,
                    display: {
                        Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Manual\"}]}" as string
                    }
                }
            }
        }
    }
);


mods.jei.JEI.addItem(fullTome);
craftingTable.addShapeless("full_tome_shapeless", fullTome, [<item:minecraft:dirt>]);
mods.initialinventory.InvHandler.addStartingItem("full_tome_starting_item", fullTome, 1);

fullTome.addTooltip(MCTextComponent.createStringTextComponent("The tome contains all the basic manuals you'll need to get going...").setStyle(new MCStyle().setColor(<formatting:aqua>)));
mods.jei.JEI.addDescription(fullTome, "Yo dawg, we heard you like books...",
											"All you need to do is put 1 dirt in a crafting table et voila, a brand new book if you lose this one!");
