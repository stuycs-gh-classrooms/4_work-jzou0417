int[] xvals;
int[] yvals;
int MAX_POINTS = 1000;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;


}//setup



void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(3);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }//for

}//drawLines

void draw(){
  background(0);
  drawLines(xvals, yvals);
}

void mousePressed(){
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}
