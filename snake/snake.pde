int total = int(TWO_PI/0.01);//total number of indexes points, points
//until the amplitude is back to zero

float[] wave = new float[total];//array for the amplitude of the
//object to be drawn betwen 0 and ht

int numBalls = 20;
int[]index= new int[numBalls];//  1 = 0;//


//changer = 10;
void setup() {
  size(400, 400);
  float a = 0;
  for (int i = 0; i < wave.length; i++) {
    wave[i] = map(sin(a), -1, 1, 0, 180);
    println(wave[i]);
    a+=0.05;
  }
  //print(wave.length);
  //print(total);
//print(index.length);
  for (int i = 0; i < index.length; i++) {
    
    index[i] = i*5;
  }
}

void draw() {
  background(0);
  fill(255);

  for (int i=0;i<numBalls;i++) {
    ellipse(i*20, wave[index[i]], 10, 10);
    index[i] = (index[i]+1) % wave.length;
  }
}



