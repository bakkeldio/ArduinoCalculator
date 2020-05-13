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
       
        cube([70,20,3], true);

translate([48,-37,1])
    cube([10,5,3], true);

    };
    
    
    
    
    
 
    
      
        
    
     