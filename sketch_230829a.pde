import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  //ellipse(250, y/5, 50, 50);
  if (y > 35) {
    y = 35;
  }
  if (y < 30) {
    y = 30;
  }
  fill(181, 88, 31); //brown parts
  noStroke();
  ellipse(250, 250, 125, 160); //body
  ellipse(245, 132.5, 105, 100); //head
  translate(295,0);
  ellipse(y/5-5, y*3, 38, 38); //ears 295, 98
  translate(-295,0);
  translate(193, 0);
  ellipse(-y/5+5, y*3, 38, 38);
  translate(-193, 0);
  fill(250, 232, 212); //white parts
  ellipse(250, 247, y*3, y*4); //inner body
  ellipse(228, 120, 38, 38); //around the eyes
  ellipse(261, 120, 38, 38);
  ellipse(245, 145, 63, 38); //around the mouth
  translate(295,0);
  ellipse(y/5-5, y*3, 26, 26); //inner ears
  translate(-295, 0); 
  translate(193, 0);
  ellipse(-y/5+5, y*3, 26, 26);
  translate(-193, 0);
  fill(0); //black parts
  ellipse(229.5, 121.5, 15, 15); //inner eyes
  ellipse(260, 121.5, 15, 15);
  ellipse(245, 131.5, 7, 7); //nose
  fill(256, 256, 256); //white parts
  ellipse(232, 123.5, 5, 5); //inner inner eyes
  ellipse(261, 123.9, 5, 5);
  stroke(0.4);
  fill(256, 0, 0); //red parts
  triangle(270, 150, 245, 145, 220, 150); //inner mouth
  noStroke();
  fill(181, 88, 31);//rotational limbs
  translate(width/8, height/8);//arms and hands
  rotate(PI/3.5);
  ellipse(290, -100, 70, 20);
  fill(250, 232, 212);
  ellipse(325, -100, 38, 25);
  rotate(PI/-3.5);
  translate(width/-8, height/-8);
  translate(width/2, height/2);
  rotate(PI/-3.5);
  fill(181, 88, 31);
  ellipse(-30, -70, 70, 20);
  fill(250, 232, 212);
  ellipse(-65, -70, 38, 25);
  rotate(PI/3.5);
  translate(width/-2, height/-2); //legs and feet
  translate(width/2, height/2);
  rotate(PI/2.1);
  fill(181, 88, 31);
  rect(65, -30, 35, 12);
  rotate(PI/-2.1);
  translate(width/-2, height/-2);
  fill(250, 232, 212);
  ellipse(290, 350, 38, 25);
  translate(width/3, height/3);
  rotate(PI/-2.1);
  fill(181, 88, 31);
  rect(-185, 65, 40, 12);
  rotate(PI/2.1);
  translate(width/-3, height/-3);
  fill(250, 232, 212);
  ellipse(215, 350, 38, 25);
}
