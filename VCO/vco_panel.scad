include <../EuroRackMaker/CustomPanel.scad>

hp = 18;
title = "VCO";

pots = [
    [6, 100, "Coarse"],
    [12, 100, "Fine"],
    [4, 70, "FM CV"],
    [9, 70, "PWM"],
    [14, 70, "PWM CV"]
];

jacks = [
    [4, 40, "FM CV"],
    [9, 40, "1V/Oct"],
    [14, 40, "PWM CV"],
    [6, 20, "Saw"],
    [12, 20, "Pulse"]
];

panel();