//State variable constants
int DIRT = 0;
int FIRE = 1;
int BURNT = 2;
int GRASS = 3;

//Helpful color values
color DIRT_COLOR = #81582F;
color FIRE_COLOR = #F20C0C;
color BURNT_COLOR = #810707;
color GRASS_COLOR = #49B90D;

//Driver variables
boolean burning = false;
int grassDensity = 75;
int numTracts = 10;
int tractLength = 20;
Land[][] grid;


void setup() {
  size(700, 350);
  frameRate(5);
  grid = new Land[numTracts][tractLength];

  setupLand(grid, tractLength, grassDensity);
  
    showLand(grid);
}//setup

void draw() {
    showLand(grid);
  if (burning) {
      liveFire(grid);

  }//burning
}//draw


void setupLand(Land[][] row, int numPlots, float density) {
  //figure out size of each plot of land
  int plotSize = width / numPlots;

  //instantiate each Land object
  for (int r=0; r < grid.length; r++) {
    for (int i=0; i<row[r].length; i++) {
      int type = DIRT;
  
      //first Land object should be FIRE
      if (i == 0) {
        type = FIRE;
      }//start with fire
  
      //Chance for grass is based on density
      else if (random(100) < density) {
        type = GRASS;
      }//grass land
  
      //creates a new land at (x, y) with size plotSize and type
      row[r][i] = new Land(i*plotSize, r*plotSize, plotSize, type);
    }//setup loop
  }
}//setupLand

void showLand(Land[][] grid) {
  for (int r=0; r < grid.length; r++) {
    for (int i=0; i<grid[r].length; i++) {
      grid[r][i].display();
    }
  }
}//showLand


void liveFire(Land[][] grid) {
  //First, check Land objects to the left, apply state change rules.
  //Assume nothing useful to the left of row[0]
 for(int r = 0; r<grid.length;r++){
     grid[r][0].updateNextState(0);
      for (int i=1; i<grid[r].length; i++) {
        grid[r][i].updateNextState(grid[r][i-1].state);
      }//set nextStates for all plots
    
      //Based on potential state changes from updateNextState
      for (int i=0; i<grid[r].length; i++) {
        grid[r][i].changeState();
      }//change states
    }
 
}//liveFire





void keyPressed() {
  if (key == ' ') {
    burning = !burning;
  }//start burning
  else if (key == 'r') {
    burning = false;
    setupLand(grid, tractLength, grassDensity);

  }
}
