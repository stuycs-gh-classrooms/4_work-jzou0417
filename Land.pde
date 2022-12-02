class Land {
  int state,nextState,landSize,x,y;
  color landColor;
  
 Land(int x,int y, int landSize, int state){
   this.x = x;
   this.y = y;
   this.landSize = landSize;
   this.state = state;
   this.nextState = state;
 }
 
 void display(){
   switch(state){
     case 0:
       fill(DIRT_COLOR);
       break;
     case 1:
       fill(FIRE_COLOR);
       break;
     case 2:
       fill(BURNT_COLOR);
       break;
     case 3:
       fill(GRASS_COLOR);
       break;
   }
   rect(x,y,landSize,landSize);
 }

 void updateNextState(int neighborState){
   print(neighborState + "|");

    if(neighborState == 1 && state == 3){
       nextState = 1;
    }

    if(state == 1){
     nextState = 2; 
    }
 }
 
 void changeState(){
  state = nextState; 
 }
}
