import processing.core.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class snake_test extends PApplet {

int total = PApplet.parseInt(TWO_PI/0.01f);//total number of indexes points, points
//until the amplitude is back to zero

float[] wave = new float[total];//array for the amplitude of the
//object to be drawn betwen 0 and ht

int numBalls = 40;
int[]index= new int[numBalls];//  1 = 0;//
int sp = 1;
float ht=1;
//changer = 10;
public void setup() {
  size(800, 400);
  float a = 0;
  for (int i = 0; i < wave.length; i++) {
    wave[i] = map(sin(a), -1, 1, 0, 180);
    println(wave[i]);
    a+=0.05f;
  }
  //print(wave.length);
  //print(total);
//print(index.length);
  for (int i = 0; i < index.length; i++) {
    
    index[i] = i*5;
  }
}

public void draw() {
  background(0);
  fill(255);

  for (int i=0;i<numBalls;i++) {
    ellipse(i*20, ht*wave[index[i]], 10, 10);
    index[i] = (sp*index[i]+1) % wave.length;
  
  }
}

public void keyPressed(){
 if(key=='a'){
  ht=ht+0.5f;
 } 
 if(key=='s'){
  ht = ht-0.5f; 
 }
 if(key=='q'){
  sp++;
  
 }
 if(key=='w'){
  sp--; 
 }
   println(ht);

}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--hide-stop", "snake_test" });
  }
}
