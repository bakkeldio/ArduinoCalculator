$fn = 100;


module Main () {
    difference(){
        minkowski(){
            cube([142, 90, 20], true);
            cylinder(h=1, r=0.8);
        }
        
        translate([0,0,2])
        cube([138, 87, 20],true);
        
        translate([-15,-40,0])
        cube([50, 4, 30], true);
        
        translate([-11, 8, 0])
        cube([38, 4, 30], true);
                
    }
}
module Cylinders(){
    union() {
        translate([60, -38, -8])
        cylinder(h = 12.8, r = 2.25);
        
        translate([60, -38, -8])
        cylinder(h=15, r=1.5);
        
    }
    union(){
        translate([30, -38, -8])
        cylinder(h = 12.8, r = 2.25);

        translate([30, -38, -8])
        cylinder(h=15, r=1.5);
    }
    union(){
        translate([60, 37, -8])
        cylinder(h = 12.8, r = 2.25);
        
        translate([60, 37, -8])
        cylinder(h=15, r=1.5);
    }
    
   union(){
        translate([30, 37, -8])
        cylinder(h = 12.8, r = 2.25);
       
        translate([30, 37, -8])
        cylinder(h=15, r=1.5);
   }
}

module BorderCylinders(){
    difference(){
        translate([22, -42.5, -8])
        cylinder(h = 19, r = 4.3);
        
        translate([22, -41.1, -8])
        cylinder(h=19.1, r = 1.7);
        
        translate([18.9, -47.9, -9])
        cube([7, 4, 21]);
    }
    difference(){
        translate([-67, -41, -8])
        cylinder(h = 19, r = 4.3);
        
        translate([-67, -41, -8])
        cylinder(h=19.1, r = 1.7);
    }
    difference(){
        translate([67, 41, -8])
        cylinder(h = 19, r = 4.3);
        
        translate([67, 41, -8])
        cylinder(h=19.1, r = 1.7);
    }
    
    difference(){
        translate([-67, 41, -8])
        cylinder(h = 19, r = 4.3);
        
        translate([-67, 41, -8])
        cylinder(h=19.1, r = 1.7);
    }
    
}
union(){
    Main();
    Cylinders();
    BorderCylinders();
}