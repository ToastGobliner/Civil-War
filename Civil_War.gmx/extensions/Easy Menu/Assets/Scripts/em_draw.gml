///em_draw();
//This script just draws the menu and nothing else.
//Place it on the draw event of the menu object
/*
**ARGUMENTS
* None - this script doesn't require any arguments.
*/

//Initialize the halign and the valign
draw_set_halign(em_halign);
draw_set_valign(em_valign);

//Initialize the colour and the font for the title
if (em_title_color!=0) draw_set_colour(em_title_color);
if (em_title_font!=0) draw_set_font(em_title_font);

//Draw the title
draw_text_transformed(em_startx,em_starty-em_title_separation,em_title,em_title_xscale,em_title_yscale,0);

//Initialize the colour and the font for the menu sections
draw_set_colour(em_color);
draw_set_font(em_font);

//Draw the menu sections
for (var i=0; i<ds_list_size(em_section_list); i++) {
    draw_text(em_startx,em_starty+em_pixel_space+string_height(em_section_list[| 0])*i,em_section_list[| i]);
}