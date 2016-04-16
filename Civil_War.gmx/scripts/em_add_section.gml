///em_add_section(text,script);
//Use this script when you want to add a section to your menu.
//Remember to update properly the argument "section_num" of the em_init script
//if you add/remove a section.
/*
**ARGUMENTS
* [0] text :: The text of the section
* [1] script :: The ID of the script to execute
*/

//Initialize the variables of the arguments.
var text = argument0,
    script = argument1;

//Add the section in the system based on the arguments.
for (var i=0; i<ds_list_size(em_section_list); i++) {
    if (em_section_list[| i]=="") {
        em_section_list[| i] = text;
        break;
    }
}
ds_list_add(em_script_list,script);

//Once it's all placed display a little message saying some useful infos for debug.
show_debug_message("EasyMenu:: A new section has been added | Text: "+string(text)+", Script: "+string(script));
