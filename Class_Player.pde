class Player {
  int hit;
  String nameText;
  ArrayList<Item> itemList;
  Room currentRoom;
  Player(String nameText,int hit, ArrayList<Item> ItemList, Room currentRoom) {
    this.itemList=itemList;
    this.currentRoom=currentRoom;
    this.hit=hit;
  }
  
  
}
