import java.util.Map;
import java.util.HashMap;

Game game;
boolean inputText=false;
PFont font;
PTextInput input;

void setup() {
  println("You can type commands in the white text box, you may want to start by typing help");
  size(400, 400);
  input = new PTextInput(20,40,200,30);
  game = new Game();
  game.start();
}

void draw() {
  game.gameloop();
}

void keyPressed(){
 input.keyPressed(key,keyCode); 
}
