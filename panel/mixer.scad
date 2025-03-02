include <EuroPanelMaker/panel.scad>

hp = 14;
title = "AUDIO MIXER";
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

pots = [ // x (in HP column), y (mm), label, rotation (degrees)
    [2.5, 80, ""],
    [7, 80, "LEVEL"],
    [11.5, 80, ""],
    [2.5, 50, ""],
    [7, 50, "PANNING"],
    [11.5, 50, ""]
];

leds = [ // x (in HP column), y (mm), diameter (mm)
    
];

jacks = [ // x (in HP column), y (mm), label, size, rotation (degrees)
    [2.5, 105, "IN #1"] ,
    [7, 105, "IN #2"],
    [11.5, 105, "IN #3"],
    [2.5, 22, "", "14in"],
    [7, 22, "", "14in"],
    [11.5, 22, "AUX OUT"]
];

switches = [ // x (in HP column), y (mm), label above, label below, rotation (degrees)

];

labels = [ // x (in HP column), y (mm), label, rotation (degrees)
    [4.75, 32.5, "LINE OUT"]
];

panel_flipped = !$preview; // flips on render for exporting
generatePanel();