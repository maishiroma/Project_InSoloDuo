/* This handy script takes care of all horizontal collisions. The script also is able to
    handle slopes.
    
    argument0 = the moving object; argument1 = local variable
*/
yAdd = 0;
while(argument0.grounded == true && place_meeting(argument0.x+argument1,argument0.y-yAdd,SuperClass_FloorWall) && yAdd <= abs(1*argument1)){
    yAdd += 1;
}
if(place_meeting(argument0.x+argument1,argument0.y-yAdd,SuperClass_FloorWall)){
    while(!place_meeting(argument0.x+sign(argument1),argument0.y,SuperClass_FloorWall)){
        argument0.x += sign(argument1);
    }
    argument1 = 0;
    argument0.hsp = 0;   
}
else{
    argument0.y -= yAdd;
}

return argument1;
