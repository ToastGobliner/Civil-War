///track_object_type(viewid,object,minsize)

if( !instance_exists(argument1) ) exit;

view_xview[argument0]=0;
view_yview[argument0]=0;

with(argument1)
{   
    view_xview[argument0]+=x;
    view_yview[argument0]+=y;
}

view_xview[argument0]/=instance_number(argument1);
view_yview[argument0]/=instance_number(argument1);

globalvar VMinX,VMaxX,VMinY,VMaxY;
//TO FIX REPLACE WITH THIS: 
//VMinX=view_xview[argument0]; VMaxX=view_xview[argument0];
VMinY=view_yview[argument0]; VMaxY=room_height;
VMinX=view_xview[argument0]; VMaxX=room_width;
VMinY=view_yview[argument0]; VMaxY=room_height;

with(argument1)
{   
    VMinX=min(VMinX,x);
    VMaxX=room_width;
    VMinY=min(VMinY,y);
    VMaxY=room_height;
}

var VSize=max(argument2,(VMaxX-VMinX),(VMaxY-VMinY)*(view_wport[argument0]/view_hport[argument0]));

view_wview[argument0]=VSize*(view_wport[argument0]/view_hport[argument0]);
view_hview[argument0]=VSize;

view_xview[argument0]-=(view_wview[argument0]/2);
view_yview[argument0]-=(view_hview[argument0]/2);

//Experimental

