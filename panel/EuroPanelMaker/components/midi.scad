$fn = $preview ? 20 : 100; 
tolerance = 0.3;

module midi() {
    translate([0, 0, -14])
    cylinder(r = 7.5 + tolerance, h = 20);
    
    translate([11, 0, -14])
    cylinder(r = 1.25 + tolerance, h = 20);
    
    translate([-11, 0, -14])
    cylinder(r = 1.25 + tolerance, h = 20);
}

midi();