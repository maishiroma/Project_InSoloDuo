/* A script that handles the player dying.

    argument0 = player
*/

if(argument0.isMale == true){
    argument0.sprite_index = spr_deadMale;
}
else{
    argument0.sprite_index = spr_deadFemale;
}
if(argument0.dyingAnimate == true){
    argument0.image_angle += 10;
    argument0.deadTicker -= 1;
    if(argument0.deadTicker > 130){
        argument0.y = argument0.y-14;
        effect_create_below(ef_star,argument0.x,argument0.y+10,1,c_yellow);
    }
    else{
        argument0.y = argument0.y+14;
        effect_create_above(ef_star,argument0.x,argument0.y-10,1,c_yellow);
    }
}
