include <../EuroRackMaker/CustomPanel.scad>

hp = 18;
title = "MIXER";

jack_14in_label_font_size = 3;

pots = [
    [4, 80, "Vol"],
    [9, 80, "Vol"],
    [14, 80, "Vol"],
    [4, 52, "Pan"],
    [9, 52, "Pan"],
    [14, 52, "Pan"]
];

jacks = [
    [4, 100, "In"],
    [9, 100, "In"],
    [14, 100, "In"],
    [4, 22, "Line L", "14in"],
    [9, 22, "Line R", "14in"],
    [14, 22, "Head"]
];

switches = [
    
];

leds = [
    
];

panel();