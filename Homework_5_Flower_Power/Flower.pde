//------------------------------> Flower Class
class Flower {
  float x;
  float y;
  float r;
  int col;
  float spd;
  float spdX;
  float spdY;
  
  
//------------------------------> Flower Constructor

  Flower(float x, float y, float r, int col, float spd) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.col = col;
    this.spd = spd;
    
    spdX = random(-spd,spd);
    spdY = random(-spd,spd);
  }
  
//------------------------------> Flower Update

  void flowerUpdate(){
    display();
    move();
    bounce();
  }

//------------------------------> Flower visuals
  
  void display () {
    //Get Rekt
    fill(255,10);
    rect(0,0,width,height);
    
    fill(col);
    ellipse(x, y, r, r);
    
  }
  
//------------------------------> Flower movement
  
  void move(/*float speed*/) {
    x += spdX*5;
    y += spdY*5;
  }
  
//------------------------------> Flower bounce
  
  void bounce() {
  if (x > width-r/2 || x < r/2) {
    spdX *= -1;
  }
  
  if(y > height-r/2 || y < r/2){
    spdY *= -1;
  }

  if (dist(flowerPlayer.x,flowerPlayer.y,flowerObject.x,flowerObject.y) < (flowerPlayer.r/2)+(flowerObject.r/2)) {
    spdX *= -1;
    spdY *= -1;
  }
}

  /*void tracer(){
    
  }

  void coloring() {
    if (x > width-r || x < r || y > height || y < 0) {
      fill(0,0,255);
      ellipse(x, y, r*1.2, r*1.2);
    }
  }*/
}
