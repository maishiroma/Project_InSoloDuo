/*  This script resets all of the values that are attatchd to the level in terms of time
    gimmicks, stars, etc. This is only called when the player begins a new stage or gets a 
    time out (tiem runs out in a level.)
    
    Argument0 = clearLevel Object; Argument1 = SuperClassPlayer Object; 
    Argument2 = if the player timed out
*/

if(argument2){

}
else{
    //Adds this level's score to the overall score
    GUI.worldScore = GUI.worldScore + argument0.totalScore;
    GUI.gameScore = GUI.gameScore + argument0.totalScore;
    //This is to go to the next level in the set. 
    argument1.x = nextX;
    argument1.y = nextY;
    argument1.spawnX = nextX;
    argument1.spawnY = nextY;
    argument1.clearedLevel = false;
    GUI.firstRoomInLevel = argument0.nextRoom;
    audio_stop_music();
    room_goto(argument0.nextRoom);
    //Reset timer on GUI and stars
    GUI.starsCollected = 0;
    GUI.timeValue = GUI.normalTimeSet;
    GUI.inSpecial = false;
    GUI.visible = true;
}
