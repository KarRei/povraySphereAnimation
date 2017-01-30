// CS4085 - Computer Graphics II
// Project 1
// Karin Reidarman, 16059603

#include "colors.inc"
#include "stones.inc"
#include "textures.inc"

// CAMERA
camera {
	location <0, 2, -7>
	look_at <0, 0, 0>
}

//OBJECT
difference {
	sphere {
		<0, 0, 0>, 1
		texture {
			Brown_Agate
			finish { phong 1 }
		}
	}
	sphere {
		<-0.75, 0.75, -0.75>, 0.75
		texture {
			Brown_Agate
			finish { phong 1 }
		}
	}
	rotate <0,0, -clock*360>
	translate <-pi, 1, 0>
	translate <2*pi*clock, 0, 0>
}

plane { y, 0 
	pigment {
		checker color White, color Grey
		}
}

//LIGHT
light_source { <15, 15, -2> color White }
