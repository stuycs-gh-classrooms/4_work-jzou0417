boolean nukeActivated = false;
boolean mouseHovering = false;
float nukeSize = 0;
void setup(){
  size(500,500);
  fill(255,255,255);
  circle(100,100,180);
  fill(255,100,100);
  circle(100,100,160);
  textSize(80);
  fill(255,255,255);
  textAlign(CENTER, CENTER);
  text("easy",100,80);
  loop();
}

void draw(){
  background(200);
  fill(255,255,255);
  circle(100,100,180);
  fill(255,100,100);
  mouseHovering = false;
  if(abs(mouseX - 100) < 80 && abs(mouseY - 100) < 80){
    mouseHovering = true;
    fill(155,100,100);
  };
  circle(100,100,160);
  textSize(80);
  fill(255,255,255);
  textAlign(CENTER, CENTER);
  text("easy",100,80);
  
  if(nukeActivated == true){
       nukeSize += 10;
    fill(255,255,100);
    circle(100,100,nukeSize*1.2);
    fill(255,255,0);
    
    circle(100,100,nukeSize);
    fill(0,0,0);
    textSize(nukeSize*0.05);
    text("oh golly i accidently started Ww3",100,80);
  };
  
  size(500, 500);

fill(250, 200, 100);
rect(200, 200, 100, 150, 100);
ellipse(200, 210, 50, 30);
ellipse(300, 210, 50, 30);
fill(255, 150, 255);
rect(205, 300, 90, 60, 200);
fill(255);
ellipse(210, 250, 20, 20);
ellipse(290, 250, 20, 20);
fill(0);
ellipse(210, 250, 10, 10);
ellipse(290, 250, 10, 10);
}

void mousePressed(){
  if(mouseHovering == true){
    nukeActivated = true;
  };
}
