import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int LButton = 0;
int RButton = 0;
int y = 0;
int x = 0;
int l = 0;
int j = 0;
boolean firstInput = false;
public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(0);
  LButton = arduino.analogRead(1);
  RButton = arduino.analogRead(6);
  System.out.println(y);
  System.out.println(x);
  strokeWeight(0);
  if (y > 501) { //boundaries
    y = 501;
  }
  if (y < -100) {
    y = -100;
  }
  if (y < 500 && RButton > 500) { //upLeft --> downRight
    y += 50;
    fill(255, 0, 0);
    rect(y-50, y-30, 50, 50);
    firstInput = true;
  }
  if (y <= 501 && LButton > 500 && firstInput == true) {
    y -= 50;
    fill(0, 255, 0);
    rect(y+50, y+50, 50, 50);
  }
  if (LButton > 500 && RButton > 500) {
    fill(0, 0, 255);
    rect(y, y, 50, 50);
  }
  if (x <= 500 && RButton > 500) { //midLeft ---> midRight
    x -= 50;
    fill(221, 122, 54);
    rect(x+500, 240, 50, 50);
  }
  
  if (x < 0 && LButton > 500) {
    x += 50;
    fill(255);
    rect(x+500, 240, 50, 50);
  }
  
}
