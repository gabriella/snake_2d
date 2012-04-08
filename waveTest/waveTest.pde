
int total = int(TWO_PI/0.01);

float[] wave = new float[total];

int index1 = 0;

int index2 = 50;

void setup() {
  size(400,400);
  println(total);
  float a = 0;
  for (int i = 0; i < wave.length; i++) {
     wave[i] = map(sin(a),-1,1,0,height); 
     a+=0.01;
   }
  
  
}

void draw() {
  background(0);
  //println(frameRate);
  fill(255);
  
  
  ellipse(100,wave[index1],10,10);
  index1 = (index1+1) % wave.length;

  ellipse(200,wave[index2],10,10);
  index2 = (index2+1) % wave.length;


  
}
