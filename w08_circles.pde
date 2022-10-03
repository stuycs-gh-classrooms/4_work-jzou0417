//was messing with objects, this probably would be more efficient the intended way but i got bored
circle movingCircle;

class circle{
  int[] pos;
  int size;
  circle(int[] tempPos,int tempSize){
    pos = tempPos;
    size = tempSize;
  }
  
  void update(){
    pos[0]++;
    if(pos[0] > width - size/2){
      pos[0] = size/2;
      pos[1] += size;
      if(pos[1] > height){
        pos[1] = 100+size/2;
      };
    }
    circle(pos[0],pos[1],size);
  }
}

void circleRow(int numCircles,int diameter){
  for (int i = 0; i < numCircles; i++) {
    circle(diameter/2 + float(i)/numCircles * width,diameter/2,diameter);
  }
}

void setup(){
  size(500,500);
  movingCircle = new circle(new int[] {50,height/5+50},100);
}

void draw(){
  background(255);
  circleRow(5,100);
  movingCircle.update();
}
