include <../EuroRackMaker/CustomPanel.scad>

hp = 10;
title = "ADSR";

pots = [
    [3, 95, "Attack"],
    [7, 80, "Decay"],
    [3, 65, "Sustain"],
    [7, 50, "Release"]
];

jacks = [
    [3, 22, "Trig"],
    [7, 22, "CV"]
];

switches = [
    
];

leds = [
    
];

panel();