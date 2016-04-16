///em_init(section_num,font,pixel_space,cursor_char,start_x,start_y,halign,valign,color,title,title_separation,title_color,title_font,title_xscale,title_yscale,sound);

/** 
    EasyMenu all coded by Wolfrost
    It's not required but I'd like to appear in the credits 
    if you use this system for your game!
    Thanks :)
**/

//Place it on the create event of the menu object
/*
**ARGUMENTS
* [0] section_num :: The number of voices of your menu
* [1] font :: Not much to say, only the font of the text
* [2] pixel_space :: The space between a section and another
* [3] cursor_char :: The char of the cursor to display
* [4] start_x :: The X position of where to start drawing the menu
* [5] start_y :: The Y position of where to start drawing the menu
* [6] halign :: The horizontal halign of the menu (fa_left, fa_center, fa_right)
* [7] valign :: The vertical halign of the menu (fa_bottom, fa_middle, fa_top) 
* [8] color :: The color of the text of the menu
* [9] title :: The title of your game
* [10] title_separation :: The pixel separation from the title to the menu
* [11] title_color :: The color of the title, 0 if you want same color
* [12] title_font :: The font of the title, 0 if you want same font
* [13] title_xscale :: The xscale of the title
* [14] title_yscale :: The yscale of the title
* [15] sound :: The sound to play when you switch position in the menu, 0 if you don't want any sound
*/

//Define the arguments into variables
var section_num = argument0,
    font = argument1,
    pixel_space = argument2,
    cur = argument3,
    startx = argument4,
    starty = argument5,
    halign = argument6,
    valign = argument7,
    color = argument8,
    title = argument9,
    title_separation = argument10,
    title_color = argument11,
    title_font = argument12,
    title_xscale = argument13,
    title_yscale = argument14,
    sound = argument15;

//Initialize EasyMenu variables    
em_section_list = ds_list_create();
em_script_list = ds_list_create();
em_position = 0;
em_pixel_space = pixel_space;
em_font = font;
em_cursor = cur;
em_startx = startx;
em_starty = starty;
em_halign = halign;
em_valign = valign;
em_color = color;
em_title = title;
em_title_separation = title_separation;
em_title_color = title_color;
em_title_font = title_font;
em_title_xscale = title_xscale;
em_title_yscale = title_yscale;
em_sound = sound;
for (var i=0; i<section_num; i++) {
    ds_list_add(em_section_list,"");
}
em_max_position = ds_list_size(em_section_list);

//Once it's finished, display in the console a little message.
show_debug_message("Easy Menu has been initialized correctly.");
