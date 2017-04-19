/* A script that checks if the object is on the floor.

    argument0 = object
*/

if(place_meeting(argument0.x,argument0.y+1,SuperClass_FloorWall)){
    argument0.grounded = true;
    GUI.canPause = true;
}
else{
    argument0.grounded = false;
}
