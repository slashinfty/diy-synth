width = 54 * 5.08;
height = 128.5 + (2 * 1.2);
depth = 90;
wall = 2;

totalWidth = width + (wall * 2);
totalHeight = height + (wall * 2);
totalDepth = depth + wall;

middleX = totalWidth / 2;

$fn = $preview ? 20 : 100;

difference() {
    union() {
        cube([totalWidth, totalHeight, totalDepth]);
        
        polyhedron([
            [0, 0, 0],
            [35, 0, 0],
            [0, 0, totalDepth],
            [10, 0, totalDepth],
            [0, -10, 0],
            [35, -10, 0],
            [0, -10, totalDepth],
            [10, -10, totalDepth]
        ], [
            [3, 2, 0, 1],
            [6, 7, 5, 4],
            [1, 0, 4, 5],
            [0, 2, 6, 4],
            [2, 3, 7, 6],
            [3, 1, 5, 7]
        ]);
        
        polyhedron([
            [totalWidth - 35, 0, 0],
            [totalWidth, 0, 0],
            [totalWidth - 10, 0, totalDepth],
            [totalWidth, 0, totalDepth],
            [totalWidth - 35, -10, 0],
            [totalWidth, -10, 0],
            [totalWidth - 10, -10, totalDepth],
            [totalWidth, -10, totalDepth]
        ], [
            [3, 2, 0, 1],
            [6, 7, 5, 4],
            [1, 0, 4, 5],
            [0, 2, 6, 4],
            [2, 3, 7, 6],
            [3, 1, 5, 7]
        ]);
        
        polyhedron([
            [middleX - 60, 0, 0],
            [middleX + 60, 0, 0],
            [middleX - 85, 0, totalDepth],
            [middleX - 35, 0, totalDepth],
            [middleX, 0, totalDepth - 50],
            [middleX + 35, 0, totalDepth],
            [middleX + 85, 0, totalDepth],
            [middleX - 60, -10, 0],
            [middleX + 60, -10, 0],
            [middleX - 85, -10, totalDepth],
            [middleX - 35, -10, totalDepth],
            [middleX, -10, totalDepth - 50],
            [middleX + 35, -10, totalDepth],
            [middleX + 85, -10, totalDepth]
        ], [
            [1, 0, 7, 8],
            [0, 2, 9, 7],
            [2, 3, 10, 9],
            [3, 4, 11, 10],
            [4, 5, 12, 11],
            [5, 6, 13, 12],
            [6, 1, 8, 13],
            [9, 10, 11, 12, 13, 8, 7],
            [6, 5, 4, 3, 2, 0, 1]
        ]);
        
        difference() {
            polyhedron([
                [37, totalHeight, 0],
                [middleX - 62, totalHeight, 0],
                [12, totalHeight, totalDepth],
                [middleX - 87, totalHeight, totalDepth],
                [37, totalHeight + 8, 0],
                [middleX - 62, totalHeight + 8, 0],
                [12, totalHeight + 8, totalDepth],
                [middleX - 87, totalHeight + 8, totalDepth]
            ], [
                [2, 6, 7, 3],
                [0, 4, 6, 2],
                [0, 1, 5, 4],
                [3, 7, 5, 1],
                [2, 3, 1, 0],
                [7, 6, 4, 5]
            ]);
            
            translate([12, totalHeight, totalDepth - 30])
            cube(50);
        }
        
        difference() {
            polyhedron([
                [totalWidth - 37, totalHeight, 0],
                [middleX + 62, totalHeight, 0],
                [totalWidth - 12, totalHeight, totalDepth],
                [middleX + 87, totalHeight, totalDepth],
                [totalWidth - 37, totalHeight + 8, 0],
                [middleX + 62, totalHeight + 8, 0],
                [totalWidth - 12, totalHeight + 8, totalDepth],
                [middleX + 87, totalHeight + 8, totalDepth]
            ], [
                [2, 6, 7, 3],
                [0, 4, 6, 2],
                [0, 1, 5, 4],
                [3, 7, 5, 1],
                [2, 3, 1, 0],
                [7, 6, 4, 5]
            ]);
            
            translate([totalWidth - 67, totalHeight, totalDepth - 30])
            cube(60);
        }
    }
    
    translate([wall, wall, wall])
    cube([width, height, depth + 0.1]);
    
    translate([wall, 3, 0])
    union() {
        translate([20, height + wall, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
        
        translate([width / 2, height + wall, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
        
        translate([width - 20, height + wall, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
        
        translate([20, 0, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
        
        translate([width / 2, 0, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
        
        translate([width - 20, 0, 70 + wall])
        rotate([90, 0, 0])
        cylinder(r = 2.5, h = 3);
    }
    
    translate([middleX, 25 + wall, 0])
    cylinder(h = wall + 0.1, d = 6.4);
}