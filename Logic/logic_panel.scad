include <../EuroRackMaker/CustomPanel.scad>

hp = 7;
title = "LOGIC";

pots = [
    
];

jacks = [
    [2, 17, "", "35mm", 270],
    [2, 32, "", "35mm", 270],
    [2, 47, "", "35mm", 270],
    [2, 62, "", "35mm", 270],
    [2, 77, "", "35mm", 270],
    [2, 92, "", "35mm", 270],
    [2, 107, "", "35mm", 270]
];

switches = [
    
];

leds = [
    
];

labels = [
    [5, 105, "IN"],
    [5, 90, "IN"],
    [5, 75, "AND"],
    [5, 60, "OR"],
    [5, 45, "NAND"],
    [5, 30, "NOR"],
    [5, 15, "XOR"]
];

panel();