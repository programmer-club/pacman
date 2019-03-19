
int tileSize=32;

void settings(){
  // P3D is uses to take advantage of hardware acceleration if available
  // Nothing else should be in this method
  size(tileSize*gridW,tileSize*gridH,P3D);
}

void setup(){
  // Load images, setup game
}

void draw(){
  background(0);
  
  // Draw the level:
  for(int x=0;x<gridW;x++){
    for(int y=0;y<gridH;y++){
      noStroke();
      if(level[x][y]==WALL)fill(0,255/3,255);
      else noFill();
      rect(x*tileSize,y*tileSize,tileSize,tileSize);
    }
  }
}