//------------------------------> Define global variables

Flower flowerPlayer, flowerObject;

//ArrayList<Flower> tracer = new ArrayList<Flower>();


//------------------------------> Setup runs once

void setup() {
  size(1000, 1000);
  smooth();
  noStroke();
  ellipseMode(CENTER);
  //background(#FFFFFF);

  flowerPlayer = new Flower(900, 500, 200, #050505, 2); 
  flowerObject = new Flower(100, 500, 100, #050505, 5);
}

//------------------------------> Draw runs every frame

void draw() {
  //background(#FFFFFF);
  
  flowerPlayer.flowerUpdate();
  flowerObject.flowerUpdate();
}
