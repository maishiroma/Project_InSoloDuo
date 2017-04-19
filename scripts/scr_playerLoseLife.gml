/*This handles the immediate effects of losing a life. The 
  player will be the only one that will call this.
  
  argument0 = player
*/

effect_clear();
GUI.canPause = false;
GUI.livesRemaining -=1;
GUI.starsCollected = 0;
argument0.image_alpha = 1;
instance_deactivate_all(true);
audio_pause_music();
audio_play_sound(sd_playerDefeat,5,false);
argument0.dead = true;
alarm[2] = 50;
