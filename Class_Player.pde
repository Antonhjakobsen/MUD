class Player {
  int hit;
  int strength;
  String nameText;
  ArrayList<Item> itemList = new ArrayList<Item>();
  Room currentRoom;
  Player(String nameText, int hit, int strength) {
    this.nameText=nameText;
    this.hit=hit;
    this.strength=strength;
  }
  void setLocation(Room room) {
    currentRoom=room;
  }
  String getLastItem() {
    String msg = "Itim list tom";
    if (currentRoom.items.size()!=0) {
     msg=currentRoom.items.get(currentRoom.items.size()-1).itemName;
    }
    return msg;
  }
  void pickUpItem(Item item) {
    if (currentRoom.items.size()!=0) { //<>//
      game.player.itemList.add(item);
      currentRoom.items.remove(item);
    }
  }
  
  String itemListNames(){
   String str="";
   for(Item item:itemList){
    str=str+item.itemName+", ";
   }
   if(itemList.size()>=1){ 
     str=str.substring(0,str.length()-2);
   }
   //return str.substring(0,str.length()-2);
   return str;
  }
  void death(){
   game.player.hit=0;
   println("You died");
     size(0,0);
  }
  void attack(){
   game.player.currentRoom.enemyList.clear();
   println("YOU DEFEATED THE ENEMY, WOOOOOW");
  }
}
