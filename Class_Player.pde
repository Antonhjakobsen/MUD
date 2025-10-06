class Player {
  int hit;
  int strength;
  String nameText;
  int money;
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
  void pickUpItem(Item item) {
    if (currentRoom.items.size()!=0) { //<>//
      game.player.itemList.add(item);
      currentRoom.items.remove(item);
    }
  }
  String getLastItem() {
    String msg = "Itim list tom";
    if (currentRoom.items.size()!=0) {
     msg=currentRoom.items.get(currentRoom.items.size()-1).itemName;
    }
    return msg;
  }
  String itemListNames(){
   String str="";
   for(Item item:itemList){
    str=str+item.itemName+", ";
   } 
   return str.substring(0,str.length()-2);
  }
}
