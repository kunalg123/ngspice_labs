##Initialze pointer
set x 0
set y 0
set number_of_inputs 6
box position $x $y

##Create ground strips###
set ground_strip_width 66
set ground_strip_height 4
box size $ground_strip_width $ground_strip_height
paint metal1

##Create p-substrate contact##
set psc_width 4
set psc_height 4
set psc_spacing 4
set psc_box_position [expr {$x-4}]
set number_of_psc [expr {$ground_strip_width/8}]
for {set i 1} {$i <= $number_of_psc} {incr i} {
set psc_box_position [expr {$psc_box_position+8}]
box position $psc_box_position $y
box size $psc_width $psc_height
paint psc
box move right $psc_spacing
}

##Create n-diff area##
set ndiff_width 54
set ndiff_height 17
set ndiff_box_position_x [expr {$x+6}]
set ndiff_box_position_y [expr {$y+9}]
box position $ndiff_box_position_x $ndiff_box_position_y
box size $ndiff_width $ndiff_height
paint ndiff

#Create n-well area##
set nwell_width 67
set nwell_height 35
set nwell_box_position_x [expr {$x+0}]
set nwell_box_position_y [expr {$y+32}]
box position $nwell_box_position_x $nwell_box_position_y
box size $nwell_width $nwell_height
paint nwell

##Create p-diff area##
set pdiff_width 54
set pdiff_height 17
set pdiff_box_position_x [expr {$x+6}]
set pdiff_box_position_y [expr {$y+38}]
box position $pdiff_box_position_x $pdiff_box_position_y
box size $pdiff_width $pdiff_height
paint pdiff

##Create poly-strips##
set poly_width 2
set poly_height 52
set poly_spacing 6
set poly_box_position_x [expr {$x+12}]
set poly_box_position_y [expr {$y+6}]
set number_of_poly_strips $number_of_inputs
for {set i 1} {$i <= $number_of_inputs} {incr i} {
box position $poly_box_position_x $poly_box_position_y
box size $poly_width $poly_height
paint poly
set poly_box_position_x [expr {$poly_box_position_x+8}]
}

##Create power strips###
set power_strip_width 66
set power_strip_height 4
box position $x [expr {$y+60}]
box size $power_strip_width $power_strip_height
paint metal1

##Create n-substrate contact##
set nsc_width 4
set nsc_height 4
set nsc_spacing 4
set nsc_box_position_x [expr {$x-4}]
set nsc_box_position_y [expr {$y+60}]
set number_of_nsc [expr {$power_strip_width/8}]
for {set i 1} {$i <= $number_of_nsc} {incr i} {
set nsc_box_position_x [expr {$nsc_box_position_x+8}]
box position $nsc_box_position_x $nsc_box_position_y
box size $nsc_width $nsc_height
paint nsc
box move right $nsc_spacing
}
