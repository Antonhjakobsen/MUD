class Enemy{
  String enemyName; 
  int health;
  int strength;
  Enemy(String enemyName, int health, int strength){
   this.enemyName=enemyName;
   this.health=health;
   this.strength=strength;
  }
  
  void attack(){
   game.player.hit=game.player.hit-strength; 
  }
  
  void takeDamage(){
   health=health-game.player.strength; 
 }
 
}
