external_diameter=28;
extension_lenght=10;
base_nut_height=8;
base_nut_diameter=15;
screw_diameter=3.2;
hitch_thickness=4.4;
hitch_hole_diameter=10.7;
$fn=100;

difference(){
  union(){
    cylinder(d=external_diameter, h=extension_lenght+base_nut_height);
    translate([0,0,extension_lenght+base_nut_height]) cylinder(d=hitch_hole_diameter, h=hitch_thickness);
  }
  cylinder(d=screw_diameter, h=extension_lenght+base_nut_height+hitch_thickness,$fn=20);
  cylinder(d=base_nut_diameter, h=base_nut_height, $fn=6);
}
