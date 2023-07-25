include <../EuroRackMaker/EuroPanelMaker/panel.scad>
include <../EuroRackMaker/constants.scad>

hp = 4;
title = "";

switches = [
    [2, 85, "On", "Off"]
];

leds = [
    [2, 40, 2.9]
];

generatePanel();