boolean nukeActivated = false;
boolean mouseHovering = false;
float nukeSize = 0;
void setup(){
  size(700,500);
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

fill(#D41F39);
ellipse(571, 282, 100, 50);
ellipse(445, 282, 100, 50);
fill(#FFAAD6);
circle(400, 220, 50);
circle(600, 220, 50);
circle(500,200, 200);

fill(0);
  //ellipse(230, 175, 25, 50);
  //ellipse(180, 175, 25, 50);
fill(0, 118, 192);
stroke(0);
strokeWeight(3);
ellipse(530, 175, 25, 60);
ellipse(480, 175, 25, 60);
noStroke();
fill(0);
ellipse(530, 170, 25, 50);
ellipse(480, 170, 25, 50);
fill(255);
ellipse(530, 167, 20, 35);
ellipse(480, 167, 20, 35);
fill(235,103,150);
ellipse(560, 220, 20, 15);
ellipse(450, 220, 20, 15);
noFill();
stroke(0);
arc(508, 230, 20, 10, 0, PI);
noStroke();
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
