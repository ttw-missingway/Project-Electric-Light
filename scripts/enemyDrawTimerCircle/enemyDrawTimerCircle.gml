/// @function enemyDrawTimerCircle(x ,y ,value, max, colour, radius, transparency, width)

/// @param value
/// @param max
/// @param colour
/// @param radius
/// @param x
/// @param y

if (argument0 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument0/argument1) * numberofsections 
    
    if (val > 1) {
            
        draw_set_colour(argument2);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument3+argument4, argument3+argument5);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection) // 0 is the starting angle
            tx = lengthdir_x(argument3, len);
            ty = lengthdir_y(argument3, len);
            draw_vertex(argument3+tx, argument3+ty);}
        
        draw_primitive_end();
        
        draw_set_alpha(1);
		
		draw_set_colour(c_white);		     
    }
    
}