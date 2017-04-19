

/*  This script resets all of the variables of the player to their default values.
    This is called when the player begins a new level or dies. Else, the script
    simply resets all the player's values to their defaults, excluding lives.
    
    Argument0 = player; Argument1 = if the player died. 
    
*/

if(argument1){
    if(GUI.livesRemaining < 0){
        instance_destroy();
        with(GUI){
            instance_destroy();
        }
        room_goto(room_gameOver);
    }
    else if(GUI.timeValue < 0){
        with(GUI){
            timeValue = normalTimeSet;
            starsCollected = 0;
            room_goto(firstRoomInLevel);
        }
        argument0.x = GUI.defaultX;
        argument0.y = GUI.defaultY;
    }
    else if(argument0.hp < 1 || argument0.offScreened == true){
        argument0.x = argument0.spawnX;
        argument0.y = argument0.spawnY;
    }
}
global.active = false;
with(argument0){
    image_angle = 0;
    image_alpha = 1;
    hp = maxHP;
    vsp = 0
    hsp = 0;
    inviniFrames = false;
    sCoolDownMode = false;
    sActionPerform = false;
    fOneProjectile = false;
    sCoolDuration = 75;
    sMoveDuration = 20;
    offScreened = false;
    dead = false;
    deadTicker = 160;
    dyingAnimate = false;
    hitStun = 10;
}
