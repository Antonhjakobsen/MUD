class Command {


  void parseInput(String input, Game game) {
    // Meget simpel input parser
    if (input.equals("look")) {
      println(game.player.currentRoom.roomDescription);

      if (game.player.currentRoom.enemyList.size()>0) {
        for (Enemy en : game.player.currentRoom.enemyList) {
          println("Enemi: " + en.enemyName + " - " + en.enemyName);
        }
      }
      if (game.player.currentRoom.items.size()>0) {
        for (Item in : game.player.currentRoom.items) {
          println("Itim: " + in.itemName + " - " + in.itemName);
        }
      }
      if (game.player.currentRoom.exits.size() > 0) {
   for (m.<String, Room> rn : game.player.currentRoom.exits.entrySet()) {
        System.out.println("Exit: " + rn.getKey() + " - Leads to: " + rn.getValue().roomDescription);
    }
}

    } else if (input.equals("items")) {

      if (game.player.currentRoom.items.size()>0) {
        for (Item it : game.player.currentRoom.items) {
          println("Item: " + it.itemName + " - " + it.itemDescription);
        }
      }
    } else if (input.equals("north") && game.player.currentRoom.exits.containsKey("north")) {
      game.player.setLocation(game.player.currentRoom.exits.get("north"));
      println("You moved north to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("south") && game.player.currentRoom.exits.containsKey("south")) {
      game.player.setLocation(game.player.currentRoom.exits.get("south"));
      println("You moved south to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("south") && game.player.currentRoom.exits.containsKey("west")) {
      game.player.setLocation(game.player.currentRoom.exits.get("east"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("west") && game.player.currentRoom.exits.containsKey("west")) {
      game.player.setLocation(game.player.currentRoom.exits.get("west"));
      println("You moved south to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("east") && game.player.currentRoom.exits.containsKey("east")) {
      game.player.setLocation(game.player.currentRoom.exits.get("south"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("center") && game.player.currentRoom.exits.containsKey("center")) {
      game.player.setLocation(game.player.currentRoom.exits.get("south"));
      println("You moved center to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("take") && game.player.currentRoom.items.size()>0) {
      game.player.pickUpItem(game.player.currentRoom.items.get(0));
      println("You pickedup a: " + game.player.getLastItem());
    } else {
      println("Command not recognized.");
    }
  }
}
