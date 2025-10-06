class Room { //<>//
  String roomDescription;
  HashMap<String, Room> exits;
  ArrayList<Item> items;
  ArrayList<Enemy> enemyList;

  Room(String roomDescription) {
    this.roomDescription=roomDescription;
    //this.exits=exits;
    //this.items=items;
    //this.enemyList=enemyList;
    exits = new HashMap<String, Room>();
    items = new ArrayList<Item>();
    enemyList = new ArrayList<Enemy>();
  }

  void addExit(String direction, Room room) {
    exits.put(direction, room);
  }

  void addItem(Item item) {
    items.add(item);
  }

  void addEnemy(Enemy enemy) {
    enemyList.add(enemy);
  }
  void portal(){
   boolean gamba;
      float b=random(0, 1);
      if (b>0.5) {
        gamba=true;
      } else {
        gamba=false;
      }
      if (gamba==false) {
        game.player.death();
      } else {
        game.player.hit=game.player.hit*2;
      }
  }
}
