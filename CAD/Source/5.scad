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

module body () {
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

body();