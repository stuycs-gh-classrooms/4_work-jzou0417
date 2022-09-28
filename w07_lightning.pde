void drawLightning(float x, float y, int numParts,float deviation){
  stroke(255,255,0);
  float yInt = width/numParts;
  while(numParts>0){
    float nextX = x + random(deviation) - deviation/2;
    float nextY = y + yInt;
    numParts--;
    line(x,y,nextX,nextY);
    y = nextY+1;
    x = nextX;
  }
}

void setup(){
  size(500,500);
  background(0);
  drawLightning(100,0,10,20);
   drawLightning(200,0,20,50);
    drawLightning(200,0,200,50);
    drawLightning(400,0,200,50);
    drawLightning(300,0,200,10);
}
