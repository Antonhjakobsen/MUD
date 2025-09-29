class Player {
  int hit;
  String nameText;
  ArrayList<Item> itemList;
  Room currentRoom;
  Player(String nameText, int hit) {
    this.nameText=nameText;
    this.hit=hit;
  }
  void setLocation(Room room) {
    currentRoom=room;
  }
  void pickUpItem(Item item) {
    if (currentRoom.items.size()!=0) { //<>//
      itemList.add(item);
      currentRoom.items.remove(item);
    }
  }
  String getLastItem() {
    String msg = "Itim list tom";
    if (itemList.size()!=0) {
     msg=itemList.get(itemList.size()-1).itemName;
    }
    return msg;
  }
}
