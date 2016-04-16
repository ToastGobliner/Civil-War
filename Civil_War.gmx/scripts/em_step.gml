///em_step(key_up,key_down,key_enter);
//Place it on step event of the menu object
/*
**ARGUMENTS
* [0] key_up :: The key required to go up in the menu, you can bind whatever you want
* [1] key_down :: The key required to go down, same as previous argument
* [2] key_enter :: The key required to execute action
*/

em_key_up = argument0; //Initialize the bind of key_up
em_key_down = argument1; //Initialize the bind of key_down
em_key_enter = argument2; //Initialize the bind of key_enter

var actual_string = em_section_list[| em_position];
var cur = em_cursor;

//Switch positions based to keys
if (em_key_up) { //Go up
    if (string_char_at(em_section_list[| em_position],0)==cur)
        em_section_list[| em_position] = string_delete(em_section_list[| em_position],1,1);
    if (em_position==0) em_position = em_max_position-1;
    else em_position--;
    if (em_sound!=0) audio_play_sound(em_sound,10,0);
}

if (em_key_down) { //Go down
    if (string_char_at(em_section_list[| em_position],0)==cur)
        em_section_list[| em_position] = string_delete(em_section_list[| em_position],1,1);
    if (em_position>=em_max_position-1) em_position = 0;
    else em_position++;
    if (em_sound!=0) audio_play_sound(em_sound,10,0);
}

//Execute the right script when a button is activated
if (em_key_enter) {
    if (em_script_list[| em_position]!=0) script_execute(em_script_list[| em_position]);
}

//Places the cursor
if (string_char_at(actual_string,0)!=cur) em_section_list[| em_position] = cur+actual_string;
