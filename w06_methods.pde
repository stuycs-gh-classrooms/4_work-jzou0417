boolean mouseHeld = false;
ArrayList<button> buttonStorage = new ArrayList<button>();

class button{
  boolean activated = false;
  int[] pos;
  int nukeSize = 0;
  int size;
  button(int[] tempPos,int tempSize){
   pos = tempPos;
   size = tempSize;
  }
  
  void update(){
    fill(255,255,255);
    circle(pos[0],pos[1],size);
    
    fill(255,100,100);
    if(abs(mouseX - pos[0]) < float(size)*0.4 && abs(mouseY - pos[1]) < float(size)*0.4 && mouseHeld){
      activated = true;
    };
   
    circle(pos[0],pos[1],float(size)*0.8);
    textSize(float(size)*0.4);
    fill(255,255,255);
    textAlign(CENTER, CENTER);
    text("easy",pos[0],pos[1]);
    
    
    if(activated){
      nukeSize += 10;
      fill(255,255,100);
      circle(pos[0],pos[1],nukeSize*1.2);
      fill(255,255,0);
      
      circle(pos[0],pos[1],nukeSize);
      fill(0,0,0);
      textSize(nukeSize*0.05);
      text("oh golly i accidently started Ww3",pos[0],pos[1]);
    }
  }
  
};

void createButton(int[] pos,int size){
  button newButton = new button(pos,size);
  buttonStorage.add(newButton);
}


void setup(){
  size(500,500);
  createButton(new int[] {20,20},50);
    createButton(new int[] {450,20},50);
  createButton(new int[] {450,400},80);

  createButton(new int[] {200,200},100);
  createButton(new int[] {400,200},200);
  loop();
}

void draw(){
  background(200,200,200);
    
  for( int i = 0; i < buttonStorage.size(); i++){
   buttonStorage.get(i).update();
  };

}

void mousePressed(){
  mouseHeld = true;
}

void mouseReleased(){
  mouseHeld = false;
}
