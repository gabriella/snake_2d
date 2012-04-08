int total = int(TWO_PI/0.01);//total number of indexes points, points
//until the amplitude is back to zero

float[] wave = new float[total];//array for the amplitude of the
//object to be drawn betwen 0 and ht
int indexSpacing  = 4;


int numBalls = 40;
int[]index= new int[numBalls];//  1 = 0;//
int sp = 1;
float ht=1;
int num=1;
//changer = 10;
void setup() {
  size(800, 400);
  float a = 0;
  for (int i = 0; i < wave.length; i++) {
    wave[i] = map(sin(a), -1, 1, 0, 180);
    println(wave[i]);
    a+=0.01;
  }
  //print(wave.length);
  //print(total);
  //print(index.length);
  
   for (int i = 0; i < index.length; i++) {

    index[i] = (i*indexSpacing)%wave.length;
  }
  
}

void draw() {
  background(0);
  fill(255);

  for (int i=0;i<numBalls;i++) {
    ellipse(i*20, ht*wave[index[i]], 10, 10);
    index[i] = (index[i]+1) % (wave.length)*num;
  }
}

void mousePressed() {
  
  //indexSpacing = int(random(4,50));
  indexSpacing++;
  for (int i = 0; i < index.length; i++) {
    index[i] = (i*indexSpacing)%wave.length;
  }
}

void keyPressed() {
  if (key=='a') {
    ht=ht+0.25;
  } 
  if (key=='s') {
    ht = ht-0.25;
  }
  if (key=='q') {
    indexSpacing++;
  }
  if (key=='w') {
    indexSpacing--;
  }
  
  if(key=='b'){
   num--; 
  }
  println(ht);
}

