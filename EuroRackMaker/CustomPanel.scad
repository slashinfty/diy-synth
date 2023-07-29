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

module panel() {
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
        
        // loop
    }
}

// Testing
panel();