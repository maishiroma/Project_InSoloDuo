/* A handy script that really just makes the player getr hurt. 
    
    argument0 = player;
*/
argument0.hp -= 1;
argument0.image_alpha = 0.5;
argument0.inviniFrames = true;
argument0.alarm[0] = 75;
audio_play_sound(sd_youDamaged,2,false);
