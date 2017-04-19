/* This handles how special actions of the gensers can be used. 
   
    argument0 = player
*/
if(argument0.sActionPerform == true && argument0.sCoolDownMode = false){
   argument0.sMoveDuration -= 1;
   if(argument0.sMoveDuration < 0){
       argument0.sAttackState = false;
       argument0.sCoolDownMode = true;
   }
}
if(argument0.sCoolDownMode == true){
    argument0.sCoolDuration -= 1;
    if(argument0.sCoolDuration < 0){
        argument0.sCoolDownMode = false;
        argument0.sActionPerform = false;
        argument0.fOneProjectile = false;
        argument0.sCoolDuration = 75;
        argument0.sMoveDuration = 20;
        audio_play_sound(sd_coolDownSMoveDone,3,false);
    }
}
