include <../templates/EuroPanelMaker/panel.scad>

hp = 2;
title = "";

toggle_switches = [
    [1, 85, "On"]
];

leds = [
    [1, 40, 2.9]
];

panel_flipped = true;
generatePanel();