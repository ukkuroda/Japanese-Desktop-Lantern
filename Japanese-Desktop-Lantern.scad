$fn=60;
outer = 43;
wall=1;
slit=2;
slit_top = 2.3;
led= 35.5;

wall_h = 15;
inner_h_l = 10;
inner_h_h = 10;
base_h = 1;

piller_w = 10;
piller_d = 5;
piller_wall=1;

paper_h=210;

difference(){
cylinder(wall_h, outer, outer);
cylinder(wall_h, outer-wall, outer-wall);
}
difference(){
    union(){
        translate([0,0,inner_h_l])
        cylinder(inner_h_h, outer-wall-slit, outer-wall-slit-slit_top);
        cylinder(inner_h_l, outer-wall-slit, outer-wall-slit);
    }
cylinder(inner_h_h+inner_h_l, led, led);
}
cylinder(base_h, outer, outer);

/*
translate([outer-wall+piller_d/2,0, wall_h/2])
difference(){
cube([piller_d,piller_w,wall_h],center=true);
cube([piller_d-piller_wall,piller_w-piller_wall,wall_h],center=true);
}
*/

/*
cube([piller_d, piller_w, paper_h-(wall_h-base_h)]);
translate([piller_wall*2,piller_wall,paper_h-(wall_h-base_h)])
cube([piller_d-piller_wall*2, piller_w-piller_wall*2, (wall_h-base_h)]);
translate([piller_wall*2,piller_wall,-(wall_h-base_h)])
cube([piller_d-piller_wall*2, piller_w-piller_wall*2, (wall_h-base_h)]);
*/