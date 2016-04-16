//draw_custom_healthbar(sprite,subimg,currentstat,maxstat,x,y)
/*
sprite: the sprite index of the healthbar to draw
subimg: the image index / frame of the healthbar to draw
currentstat: the value of the current stat, that is what the health/experience/stamina etc. is at that moment
maxstat: the maximum value the stat can reach before it can't go any further (level reached / health full)
x: the x-coordinate to draw the healthbar at
y: the y-coordinate to draw the healthbar at
*/
draw_sprite_part(argument0,argument1,0,0,argument2*(sprite_get_width(argument0)/argument3),sprite_get_height(argument0),argument4,argument5)
