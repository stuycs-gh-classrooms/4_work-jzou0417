// Justin Zou, Golam Mahi, Jordan Leung



//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sec curve
  drawSecCurve(angle, sinAmplitude, height/2);
  //cos
  drawCosCurve(angle, sinAmplitude, height/2);
  //tan
 

  angle++;
}//draw

void drawSecCurve(int degrees, int amplitude, int yOffset) {
  circle(angle%width,amplitude*1/cos(radians(degrees))+yOffset,dotDiameter);
}

void drawCosCurve(int degrees, int amplitude, int yOffset) {
  circle(angle%width,amplitude*cos(radians(degrees))+yOffset,dotDiameter);
}
