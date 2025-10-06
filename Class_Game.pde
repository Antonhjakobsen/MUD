class Game {
  Player player;
  ArrayList<Room> rooms;
  Command command;

  Game() {
    rooms = new ArrayList<Room>();
    player = new Player("Hero", 100,1);
    command = new Command();

    // Opret et eksempelrum
    Room r1 = new Room("A dark cave.");
    Room r2 = new Room("A sunny meadow, with a portal, but it seems to be one-way only, and you feel like its kind of risky.");
    Room r3 = new Room("A weirdly shaped room, with a ladder");
    Room r4 = new Room("A dark room, btw fuck you");
    Room r5 = new Room("3 doors");
    Room r6 = new Room("3 more doors and a ladder");
    Room r7 = new Room("Another bigger door");
    Room r8 = new Room("Something :)");
    Room r9 = new Room("Something else :]");
    Room r10 = new Room("A surprise");
    Room r11 = new Room("A deep coffin with a door at the bottom");
    Room r12 = new Room("The void");
    
    r1.addExit("north", r5);
    r2.addExit("south", r5);
    r3.addExit("east", r5);
    r3.addExit("down",r6);
    r4.addExit("west", r5);
    r5.addExit("south", r1);
    r5.addExit("north", r2);
    r5.addExit("west", r3);
    r5.addExit("east", r4);
    r6.addExit("north",r7);
    r6.addExit("south",r8);
    r6.addExit("east",r9);
    r6.addExit("up",r3);
    r7.addExit("north",r10);
    r7.addExit("south",r6);
    r8.addExit("west",r6);
    r9.addExit("east",r6);
    r10.addExit("portal", r2);
    r10.addExit("down", r11);
    r11.addExit("north",r12);
    // Tilføj items og enemies
    Item sword = new Item("Sword", "A sharp blade.", "Increase attack");
    Item hammer = new Item("Hammer", "Really heavy.", "Decrease attack");
    Enemy goblin = new Enemy("Goblin", 30, 5);

    r1.addItem(sword);
    r2.addItem(hammer);
    r1.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    r11.addEnemy(goblin);
    

    rooms.add(r1);
    rooms.add(r2);
    rooms.add(r3);
    rooms.add(r4);
    rooms.add(r5);
    rooms.add(r6);
    rooms.add(r7);
    rooms.add(r8);
    rooms.add(r9);
    rooms.add(r10);
    rooms.add(r11);
    

    player.setLocation(r5);
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
