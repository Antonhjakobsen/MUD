Game game;
boolean inputText=false;
PFont font;
PTextInput input;
void setup() {
  size(400, 400);
  input = new PTextInput(20,40,200,30);
  game = new Game();
  game.start();
}

void draw() {
  game.gameloop();
}
