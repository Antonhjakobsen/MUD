class PTextInput {
  float x, y, w, h;
  String text = "";
  PTextInput(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }

  void display() {
    fill(255);
    rect(x, y, w, h);
    fill(0);
    text(text, x+5, y+h/2+5);
  }

  void keyPressed(char k, int code) {
    if (k == ENTER || k == RETURN) {
      inputText=true;
      //text = "";
    } else if (k == BACKSPACE && text.length() > 0) {
      text = text.substring(0, text.length()-1);
    } else if (k==DELETE) {
      text="";
    } else {
      text += k;
    }
  }
  String getText() {
    return text;
  }
}
