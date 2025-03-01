include <EuroPanelMaker/panel.scad>

hp = 13;
title = "VCO";
margin = 0; // Add extra width on each side for support

/*
Other parameters you may want to change:

text_depth = 1.4;
title_font_size = 4.5;
title_font = "Liberation Sans:style=bold";
label_font = "Liberation Sans:style=bold";
label_font_size = 3;
pot_label_distance = 12;
pot_label_font_size = 3;
jack_label_distance = 8;
jack_label_font_size = 3;
toggle_label_distance = 12;
toggle_label_font_size = 3;
*/

switch_label_distance = 9;

pots = [ // x (in HP column), y (mm), label, rotation (degrees)
    [10.5, 66, "PWM"],
    [4, 100, ""],
    [10.5, 95, "FINE"]
];

leds = [ // x (in HP column), y (mm), diameter (mm)
    
];

jacks = [ // x (in HP column), y (mm), label, size, rotation (degrees)
    [2, 18, "SIN"] ,
    [5, 18, "TRI"],
    [8, 18, "SAW"],
    [11, 18, "SQR"],
    [2, 42, "V/OCT"],
    [5, 42, "LFM"],
    [8, 42, "PWM"],
    [2, 66, "SYNC"]
];

switches = [ // x (in HP column), y (mm), label above, label below, rotation (degrees)
    [5, 66, "HARD", "SOFT"]
];

labels = [ // x (in HP column), y (mm), label, rotation (degrees)
    [4, 120, "FREQ"]
];

panel_flipped = !$preview; // flips on render for exporting
generatePanel();