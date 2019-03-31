
use <bolts.scad>;
use <zcube.scad>;

outset = 4;

render() difference() {
	offset = (32-15)/2-5;
	
	translate([0, offset+5/2, -outset]) zcube([56, 32+5, 1.5+outset]);
	translate([0, offset, -10]) zcube([56, 32, 10]);
	
	zcube([23, 15, 1.5]);
	
	translate([-20, 0, 0]) countersunk_hole(4, 1.5);
	translate([20, 0, 0]) countersunk_hole(4, 1.5);
	
	translate([-56/2, 28, -10]) rotate([0, 0, 45-5]) zcube([20, 20, 20]);
	translate([56/2, 28, -10]) rotate([0, 0, 45+5]) zcube([20, 20, 20]);
	translate([0, 32, 5]) rotate([50, 0, 0]) zcube([56, 20, 20]);
}

