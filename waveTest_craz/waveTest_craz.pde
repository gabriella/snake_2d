int total =int(TWO_PI/0.01);//int(TWO_PI/0.01);
int balls = 20;
float[] wave = new float[total];
int []index = new int[balls];

//int index1 = 0;
float a=0;
float amp=1;
//int index2 = 15;
float per=1;

void setup() {
  size(400,400);
  println(total);

}

void draw() {
  background(0);
  //println(frameRate);
  fill(255);
  
  
  
  //   a = 0;
  for (int i = 0; i < wave.length; i++) {
     wave[i] = map(sin(a*per),-1,1,0,height); 
     //print(i);
     a+=0.005;
   }
  print(wave.length);
  
  
  
  for(int i=0;i<total;i++){
  ellipse(i,(wave[index[0]]),10,10);
  index[0] = (index[0]+1) % wave.length;
  }

//  ellipse(200,wave[index2],10,10);
//  index2 = (index2+1) % wave.length;
//
//
//  
}



