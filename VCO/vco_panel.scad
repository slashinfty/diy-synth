include <../EuroRackMaker/EuroPanelMaker/panel.scad>
include <../EuroRackMaker/constants.scad>

hp = 16;
title = "VCO";

pots = [
    [5, 100, "Coarse"],
    [11, 100, "Fine"],
    [3, 70, "FM CV"],
    [8, 70, "PWM"],
    [13, 70, "PWM CV"]
];

jacks = [
    [3, 40, "FM CV"],
    [8, 40, "1V/OCT"],
    [13, 40, "PWM CV"],
    [5, 20, "Saw"],
    [11, 20, "Square"]
];

generatePanel();