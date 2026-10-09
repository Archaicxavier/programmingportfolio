class Button {
  //member variables
  float x, y, w, h;
  char val;
  boolean mouse;
  color c1, c2;
  //constructor
  Button(float x, float y, float w, float h, char val) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.val = val;
    mouse = false;
    c1= color(128);
    c2= color(#FE29FF);
  }
  //member methods
  void display() {
    rectMode(CENTER);
    if (mouse == true) {
    fill(c2);  
    } else {
      fill(c1);
    }
    rect(x, y, w, h, 8);
    textAlign(CENTER);
    fill (0);
    text(val, x, y+15);
  }

  void mouseOver(float tempX, float tempY) {
    if (tempX>x-w/2 && tempX<x+w/2 && tempY>y-h/2 && tempY<y+h/2) {
      mouse=true;
    } else {
      mouse=false;
    }
  }
}
