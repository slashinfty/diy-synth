include <EuroPanelMaker/panel.scad>

hp = 6;
title = "";
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
    
];

leds = [ // x (in HP column), y (mm), diameter (mm)
    
];

jacks = [ // x (in HP column), y (mm), label, size, rotation (degrees)
    [3, 100, "CV OUT"] ,
    [3, 70, "GATE OUT"]
];

switches = [ // x (in HP column), y (mm), label above, label below, rotation (degrees)

];

labels = [ // x (in HP column), y (mm), label, rotation (degrees)

];

midis = [
    [3, 30, "MIDI IN"]
];

panel_flipped = !$preview; // flips on render for exporting
generatePanel();