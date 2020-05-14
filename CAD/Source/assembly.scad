module midle(){
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
    
}


module bottom () {
    module lin (){
        difference(){
            difference(){
                cylinder(r = 5, h = 18,  $fn=100);
                translate([0, 2.3, 12])
                cylinder(r = 1.8, h = 7, , $fn=100);
            }
            translate([-10, -10, -1])
            cube([20,10,20]);
        }
    }
    module pin() {
        cylinder(r = 1.8, h = 10, $fn=100);
    }
    cube([140, 90, 2]);
    cube([140, 2, 18]);
    translate([0,88,0])
    cube([140, 2, 18]);
    translate([138, 0, 0])
    cube([2, 90, 18]);
    cube([2, 8, 18]);
    translate([0,17, 0])
    cube([2, 20,18]);
    translate([0,48, 0])
    cube([2, 42, 18]);
    translate([85, 2,0])
    lin();
    translate([85, 88,0])
    rotate(180)
    lin();
    translate([2, 27, 0])
    rotate(270)
    lin();
    
    translate([2, 55, 0])
    rotate(270)
    lin();
    
    translate([20, 8, 0])
    pin();
    
    translate([20, 55, 0])
    pin();
    
    translate([65, 16, 0])
    pin();
    
    translate([65, 43, 0])
    pin();
}
module face(){
     $fn=100;
    difference(){
        translate([0,0,2])
        cube([140, 90, 3],true);
        translate([-67, 41, -8])
        cylinder(h=19.1, r = 1.7);
        
        translate([-67, -41, -8])
        cylinder(h=19.1, r = 1.7);
        
        translate([22, -41.1, -8])
        cylinder(h=19.1, r = 1.7);
        
        
        translate([67, 41, -8])
        cylinder(h=19.1, r = 1.7);
        translate([-60, -36, 2])
        
        color("gold")
        hull(){
            translate([69.17, 61.37, 0])
            cylinder(r = 9, h = 1.8);
            translate([69.17, 10, 0])
            cylinder(r = 9, h = 1.8);
            translate([10, 10, 0])
            cylinder(r = 9, h = 1.8);
            translate([10, 61.37, 0])
            cylinder(r = 9, h = 1.8);
        }

        rotate([0,0,90])
        translate([0, -48, 2])
       
        cube([70,20,4], true);

        translate([48,-37,1])
        cube([10,5,3], true);
    };
}
module button(){
    
    $fn=50;
    minkowski()
    {
      cube([6.917,6.137,0.089]);
      cylinder(r=0.5,h=0.089);
    }

}


translate([70, 45, 38])
face();
translate([70, 45, 28])
midle();
bottom();
