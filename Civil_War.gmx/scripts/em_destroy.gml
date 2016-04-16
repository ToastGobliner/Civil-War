///em_destroy();
//This script destroys the EasyMenu system.
//Place it in the destroy event of your menu object.
/*
**ARGUMENTS
* None - this script doesn't require any arguments.
*/

//Clear all the lists created
ds_list_clear(em_section_list);
ds_list_clear(em_script_list);

//Once cleared destroy all those lists
ds_list_destroy(em_section_list);
ds_list_destroy(em_script_list);
