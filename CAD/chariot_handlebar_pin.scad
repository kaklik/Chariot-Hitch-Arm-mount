pin_diameter=6.5;
pin_lenght=7;
handlebar_diameter=14.5;
pin_base_height=5;
spring_diameter=2;
$fn=100;

difference(){
  union(){
    translate([0,0,pin_base_height-handlebar_diameter/2]) rotate([90,0,0])cylinder(d=handlebar_diameter, h=handlebar_diameter, center = true);
    cylinder(d=pin_diameter, h=pin_base_height+pin_lenght);
    translate([0,0,pin_base_height+pin_lenght])sphere(d=pin_diameter);
  }
  cylinder(d=spring_diameter, h=pin_base_height,$fn=20);
  translate([0,0,-handlebar_diameter/2])
    cube([2*handlebar_diameter,2*handlebar_diameter,handlebar_diameter], center = true);
}
