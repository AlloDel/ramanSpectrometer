module 532nmPassFilter(){
	rotate([0,90,0]) {
		cylinder(r=13.25, h=4.32,$fn=100,center=true);
	}
}

module 532nmPassFilterTop(){
	difference(){
		//filterHolderTop
		translate([0,0,8]){
			color([0.8,1,.6]) cube(size=[12,40,16],center=true);	
		}
		//keyNub_innie
		translate([4,-18,1]){
			cube(size=[2.5,4.5,2.5],center=true);
		}
		//filterHole
		translate([0,0,0]){
			rotate([0,90,0]) {
				cylinder(r=13.5, h=4.75,$fn=100,center=true);
			}
		}
		translate([0,0,0]){
			rotate([0,90,0]) {
				cylinder(r=12, h=20,$fn=100,center=true);
			}
		}
		//screwHoles
		translate([0,16.5,8]){
			color([1,0,0]) cylinder(r=1.5,h=17,$fn=8,center=true);
		}
		translate([0,-16.5,8]){
			color([1,0,0]) cylinder(r=1.5,h=17,$fn=8,center=true);
		}
	}
	//keyNub_outtie
	translate([-4,18,-1]){
		cube(size=[2,4,2],center=true);
	}
}

translate([0,0,0]){
	532nmPassFilterTop();
}

//532nmPassFilter();