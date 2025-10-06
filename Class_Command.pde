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
        for (Map.Entry<String, Room> rn : game.player.currentRoom.exits.entrySet()) {
          System.out.println("ixits: " + rn.getKey()
            + " - Leads to: " + rn.getValue().roomDescription);
        }
      }
    } else if (input.equals("items")) {

      if (game.player.currentRoom.items.size()>0) {
        for (Item it : game.player.currentRoom.items) {
          println("Item: " + it.itemName + " - " + it.itemDescription);
        }
      }
    } else if(input.equals("help")){
      println("You can use the following commands under certain conditions: help, look, items, north, south, east, west, up, down, portal, take, stats, inventory and set name *INSERT HERE*");
    }
    else if (input.equals("north") && game.player.currentRoom.exits.containsKey("north")) {
      game.player.setLocation(game.player.currentRoom.exits.get("north"));
      println("You moved north to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("south") && game.player.currentRoom.exits.containsKey("south")) {
      game.player.setLocation(game.player.currentRoom.exits.get("south"));
      println("You moved south to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("west") && game.player.currentRoom.exits.containsKey("west")) {
      game.player.setLocation(game.player.currentRoom.exits.get("west"));
      println("You moved south to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("east") && game.player.currentRoom.exits.containsKey("east")) {
      game.player.setLocation(game.player.currentRoom.exits.get("east"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("up") && game.player.currentRoom.exits.containsKey("up")) {
      game.player.setLocation(game.player.currentRoom.exits.get("up"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("down") && game.player.currentRoom.exits.containsKey("down")) {
      game.player.setLocation(game.player.currentRoom.exits.get("down"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("portal") && game.player.currentRoom.exits.containsKey("portal")) {
      game.player.currentRoom.portal();
      game.player.setLocation(game.player.currentRoom.exits.get("portal"));
      println("You moved east to: " + game.player.currentRoom.roomDescription);
    } else if (input.equals("take") && game.player.currentRoom.items.size()>0) {
      game.player.pickUpItem(game.player.currentRoom.items.get(0));
      println("You pickedup a: " + game.player.getLastItem());
    } else if (input.equals("stats")) {
      println("hit="+game.player.strength);
      println("hit="+game.player.hit);
      println("name="+game.player.nameText);
    } else if (input.equals("inventory")) {
      println("The items you posses are: "+game.player.itemListNames());
    } else if (input.length()>8) {
      if (input.substring(0, 8).equals("set name")) {
        game.player.nameText=input.substring(8);
        println("Your name is now: "+game.player.nameText);
      }
    } else {
      println("Command not recognized.");
    }
  }
}
