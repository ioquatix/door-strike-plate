
use <bolts.scad>;
use <zcube.scad>;

thickness = 2.0;
outset = 4;

render() difference() {
	offset = (36-15)/2-5;
	
	translate([0, offset+5/2, -outset]) zcube([56, 36+5, thickness+outset]);
	translate([0, offset, -10]) zcube([56, 36, 10]);
	
	translate([0, 1.5, 0]) zcube([23, 15, thickness]);
	
	translate([-20, 0, 0]) countersunk_hole(4, thickness);
	translate([20, 0, 0]) countersunk_hole(4, thickness);
	
	translate([-56/2, (36+10)/2+thickness, -10]) rotate([0, 0, 45-25]) cube([20, 20, 20]);
	translate([56/2, (36+10)/2+thickness, -10]) rotate([0, 0, 45+25]) cube([20, 20, 20]);
	translate([0, 36, 5]) rotate([50, 0, 0]) zcube([56, 20, 20]);
}

