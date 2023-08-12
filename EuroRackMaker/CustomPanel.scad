include <EuroPanelMaker/panel.scad>
include <constants.scad>

tolerance = 0.3;
$fn = $preview ? 20 : 100;

// Custom components
module tabs() {
    union() {
        translate([w - 5, (eurorack_h + 85.5) / 2, -(rib_thickness + 10)])
        difference() {
            cube([4, 8, 10]);
            
            translate([1, 4, 4])
            rotate([0, 90, 0])
            cylinder(d = 6, h = 3);
            
            translate([0, 4, 4])
            rotate([0, 90, 0])
            cylinder(d = 4, h = 1);
        }
        
        translate([w - 5, (eurorack_h - 100.5) / 2, -(rib_thickness + 10)])
        difference() {
            cube([4, 8, 10]);
            
            translate([1, 4, 4])
            rotate([0, 90, 0])
            cylinder(d = 6, h = 3);
            
            translate([0, 4, 4])
            rotate([0, 90, 0])
            cylinder(d = 4, h = 1);
        }
    }
}

module dc_jack() {
    
}

module generate_dc_jacks(params, width) {
    translate([width, params[1], component_depth])
    rotate([0, 0, params[3] ? params[3] : 0])
    dc_jack();

    translate([width, params[1] + jack_label_distance, panel_thickness - text_depth])
    linear_extrude(height = text_depth + 1)
    text(params[2], font = label_font, size = jack_label_font_size, halign = "center", valign = "center");
}

module panel() {
    dc_jacks = [];
    
    // Flip panel
    translate(panel_flipped ? [panel_translate_x, 0, panel_translate_z] : [0, 0, 0])
    rotate(panel_flipped ? [0, panel_rotate, 0] : [0, 0, 0])
    difference() {
        union() {
            // Undo automatic panel flip
            rotate(panel_flipped ? [0, panel_rotate, 0] : [0, 0, 0])
            translate(panel_flipped ? [-panel_translate_x, 0, -panel_translate_z] : [0, 0, 0])
            generatePanel();
            
            tabs();
        }
        
        union() {
            for (idx = [0 : len(dc_jacks)]) {
                if (dc_jacks[idx]) {
                    echo("DC JACK:", idx = dc_jacks[idx]);
                    generate_dc_jacks(dc_jacks[idx], eurorack_w * dc_jacks[idx][0]);
                }
            }
        }
    }
}

dc_jack();
// Testing
/*
panel();
*/