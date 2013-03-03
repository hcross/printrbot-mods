include <openscad/knurledFinishLib.scad>
// knob for z axis

$fn=5*10;


//Total Dial Length mm
Length=85;

//Thickness of the dial head in mm
Dial=10;

// Knob add ons
add ="knurled"; //[none,pointer,knurled]



if (add=="knurled")
{
  knurled_cyl(Dial, 20, 3, 4, 1.5, 2, 0);
} else {
  cylinder(h=Dial,r=10);
}

if (add=="pointer")
{
    translate([-9,-9,0]) linear_extrude(height=Dial) polygon(points=[[0,0],[7,0],[0,7]], paths=[[0,1,2]]);
}

difference () {
cylinder(h=Length,r=4);
translate([0,0,Length-15]) cylinder(h=20,r=1.5);
}