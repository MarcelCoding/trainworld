/*
    MIT License

    Copyright (c) 2022 TKFRvision

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
*/

/*
    Tropicraft is an awesome mod. Sadly it is not designed to work in an modpack at all.
    I am trying to cure some of the symptoms here but the problems is way deeper
    and you would have to rewrite the whole mod to make it work perfectly.
*/

val tagManagerItems = <tagManager:items>;

//
// TAG FIXING
//

/*
    For some bizzare reason Tropicraft has it's own tags that it didn't copy over.
    I opened a pull request but this it isn't merged yet so we will have copy
    them over manually in the meantime.
*/

val tagsToFix = [
    "doors",
    "fences",
    "leaves",
    "logs",
    "planks",
    // yeah idk about the sand since it's kinda different.
    // "sand",
    "saplings",
    "slabs",
    "small_flowers",
    "stairs",
    "trapdoors",
    "walls",
    "wooden_doors",
    "wooden_fences",
    "wooden_slabs",
    "wooden_stairs",
    "wooden_trapdoors"
];

for tagToFix in tagsToFix {
    tagManagerItems.getTag("minecraft:" + tagToFix).add(tagManagerItems.getTag("tropicraft:" + tagToFix));
}


//
// Pam's HarvestCraft
//

// Force fruit compatibility with Pam's HarvestCraft by copying over the tags.
// This will be only one way for now...
for tag in tagManagerItems.getAllTags() {
    if (tag.contains(<item:pamhc2crops:pineappleitem>)) {
        tag.add(<item:tropicraft:pineapple>);
    }

    if (tag.contains(<item:pamhc2trees:coconutitem>)) {
        tag.add(<item:tropicraft:coconut>);
    }

    if (tag.contains(<item:pamhc2trees:lemonitem>)) {
        tag.add(<item:tropicraft:lemon>);
    }

    if (tag.contains(<item:pamhc2trees:grapefruititem>)) {
        tag.add(<item:tropicraft:grapefruit>);
    }

    if (tag.contains(<item:pamhc2crops:coffeebeanitem>)) {
        // yeah this sucks...
        tag.add(<item:tropicraft:raw_coffee_bean>);
        tag.add(<item:tropicraft:roasted_coffee_bean>);
    }

    if (tag.contains(<item:pamhc2trees:limeitem>)) {
        tag.add(<item:tropicraft:lime>);
    }

    if (tag.contains(<item:pamhc2trees:orangeitem>)) {
        tag.add(<item:tropicraft:orange>);
    }
}

// cutting board recipe for coconut and pineapple
val cuttingBoardAmount = 4;

craftingTable.addShapeless("pineapple_cutting_board", <item:tropicraft:pineapple_cubes> * cuttingBoardAmount, [
    <tag:items:forge:fruits/pineapple>, <tag:items:forge:tool_cuttingboard>.asIIngredient().reuse()
]);

craftingTable.addShapeless("coconut_cutting_board", <item:tropicraft:coconut_chunk> * cuttingBoardAmount, [
    <tag:items:forge:crops/coconut>, <tag:items:forge:tool_cuttingboard>.asIIngredient().reuse()
]);


// CRUSHER RECIPES
val energyRequired = 30;
val experienceCreated = 1;
val crusherAmount = 4;

//
// THERMAL EXPANSION
//

<recipetype:thermal:pulverizer>.addRecipe(
    "pulverizer_coconut",
    [<item:tropicraft:coconut_chunk> * crusherAmount],
    <tag:items:forge:crops/coconut>,
    experienceCreated,
    energyRequired
);

<recipetype:thermal:pulverizer>.addRecipe(
    "pulverizer_pineapple",
    [<item:tropicraft:pineapple_cubes> * crusherAmount],
    <tag:items:forge:fruits/pineapple>,
    experienceCreated,
    energyRequired
);

//
// IMMERSIVE ENGINEERING
//

<recipetype:immersiveengineering:crusher>.addRecipe(
    "crusher_coconut",
    <tag:items:forge:crops/coconut>,
    energyRequired,
    <item:tropicraft:coconut_chunk> * crusherAmount
);

<recipetype:immersiveengineering:crusher>.addRecipe(
    "cursher_pineapple",
    <tag:items:forge:fruits/pineapple>,
    energyRequired,
    <item:tropicraft:pineapple_cubes> * crusherAmount
);


//
// Mekanism
//

<recipetype:mekanism:crushing>.addRecipe(
    "mekanism_crushing_coconut",
     <tag:items:forge:crops/coconut>,
     <item:tropicraft:coconut_chunk> * crusherAmount
);

<recipetype:mekanism:crushing>.addRecipe(
    "mekanism_crushing_pineapple",
     <tag:items:forge:fruits/pineapple>,
     <item:tropicraft:pineapple_cubes> * crusherAmount
);

//
// COOKING FOR BLOCKHEADS
//

// I added the Piña Colada to the recipe book. You can see those changes in the datapack at:
// datapacks/trainworld/data/trainworld/cookingforblockheads/compat/tropicraft.json
