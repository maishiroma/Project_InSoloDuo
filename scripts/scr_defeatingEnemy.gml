/*  This script just says how an enemy get's defeated. Nothing else. 

    argument0 = enemy; argument1 = particle effect; argument2 = effectSound
*/

audio_play_sound(argument2,2,false);
effect_create_above(argument1,argument0.x,argument0.y,1,c_white);
with(argument0) {instance_destroy();}
