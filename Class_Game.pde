class Game {
  Player player;
  ArrayList<Room> rooms;
  Command command;

  Game() {
    rooms = new ArrayList<Room>();
    player = new Player("Hero", 100);
    command = new Command();

    // Opret et eksempelrum
    Room r1 = new Room("You are in a dark cave.");
    Room r2 = new Room("You are in a sunny meadow.");
    Room r3 = new Room("You are confused by the shape of the room");
    Room r4 = new Room("You are in a cold and dark room");
    Room r5 = new Room("You see 3 doors");
    r1.addExit("north", r2);
    r2.addExit("south", r1);
    r3.addExit("east", r1);
    r4.addExit("west", r1);
    r5.addExit("south", r1);
    r5.addExit("north", r2);
    r5.addExit("west", r3);
    r5.addExit("east", r4);

    // Tilføj items og enemies
    Item sword = new Item("Sword", "A sharp blade.", "Increase attack");
    Item hammer = new Item("hammer", "Realy heavy.", "Decrease attack");
    Enemy goblin = new Enemy("Goblin", 30, 5);

    r1.addItem(sword);
    r2.addItem(hammer);
    r1.addEnemy(goblin);

    rooms.add(r1);
    rooms.add(r2);

    player.setLocation(r1);
  }

  void start() {
    println("Game started!");
    println(player.currentRoom.roomDescription);
    
  }

  void gameloop() {
    // her kunne du opdatere input/output og game state

    input.display(); // viser tekstbox på canvas




    if (inputText) {
      handleInput(input.getText());
      inputText=false;
      input.reset();
    }
  }

  void handleInput(String input) {
    command.parseInput(input, this);
  }
}
