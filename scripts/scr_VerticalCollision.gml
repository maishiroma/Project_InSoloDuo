/* This one handles vertical collision. Fairly straightforward

    argument0 = object; argument1 = local var
*/

while(!place_meeting(argument0.x,argument0.y+sign(argument1),SuperClass_FloorWall)){
    argument0.y += sign(argument1);
}
argument1 = 0;
return argument1;
