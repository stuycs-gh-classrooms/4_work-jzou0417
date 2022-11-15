int[] xvals;
int[] yvals;
int[] curMouse = new int[2];
int MAX_POINTS = 1000;
int numPoints;
int startIndex = 1;

Boolean mouseHeld = false;
float mouseHeldTime = 0;
void setup() {
  size(600, 400);
  background(0);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;


}//setup

void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  for(int i=0;i < numPoints;i++){
    xs[i] += xMod;
    ys[i] += yMod;
  }


}

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(3);
  for (int i=startIndex; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }//for

}//drawLines

void draw(){
  background(0);
  drawLines(xvals, yvals);
  if(mouseHeld){
      mouseHeldTime += 1.0/frameRate;
  }
  if(mouseHeldTime > 0.5){
     moveLines(xvals,yvals,mouseX - curMouse[0],mouseY - curMouse[1]);
     
  }
   curMouse[0] = mouseX;
   curMouse[1] = mouseY;
}

void mousePressed(){
  mouseHeld = true;
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void mouseReleased(){
  mouseHeld = false;
  mouseHeldTime = 0;
}

void keyPressed(){
  println(keyCode);
  if(keyCode == 67){
    startIndex = numPoints+1;
  } else if(keyCode == 38){
    moveLines(xvals,yvals,0,-1);
  } else if(keyCode == 37){
      moveLines(xvals,yvals,-1,0);

  } else if(keyCode == 40){
      moveLines(xvals,yvals,0,1);

  } else if(keyCode == 39){
      moveLines(xvals,yvals,1,0);

  }
}
