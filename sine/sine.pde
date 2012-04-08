
int w;              // Width of entire wave
float theta = 0.0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
//float period = 500.0;  // How many pixels before the wave repeats
float dx = 0.5;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave

int numServos = 16;
float xspacing;   // How far apart should each horizontal location be spaced
int circleSize = 15;
int padding = 200;

float speed = 0.1;

void setup() {
  xspacing = (circleSize * numServos + numServos * padding)/width;
  size(640, 360);
  smooth();
  w = width+16;
  //dx = 0.5;//(TWO_PI / period) * xspacing;
  yvalues = new float[numServos];
}

void draw() {

  dx = map(mouseX, 0, width, 0, 0.5);
  //speed = map(mouseY, 0, height, 0, 0.1);
  amplitude = map(mouseY, 0, height, 0, 100);
  background(0);
  calcWave();
  renderWave();
  amplitude = 125;
  //period = map(mouseY,0, width, 0, 5);
 // saveFrame("images/###.png");
}

void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  theta += speed;
  // For every x value, calculate a y value with sine function
  float x = theta;
  println(x);
  for (int i = 0; i < yvalues.length; i++) {
    println(yvalues.length);
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
    // println("dx:" +dx+" speed:"+speed+" amplitude:"+amplitude+" theta:"+theta);
    //print(yvalues[i]+90+" ");
  }
  println();
}
void renderWave() {
  noStroke();
  fill(255);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
  }
}

