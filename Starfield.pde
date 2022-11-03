Star[] stars = new Star[800];


void setup(){
  size(500,500);
  noStroke();
  for(int i = 0; i < 1; i++)
    stars[i] = new Planet();
  for(int i = 1; i < stars.length; i++)
    stars[i] = new Star();
}

void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
    stars[i].move();
  }
}

class Star{
  double myX, myY, myA, myS;
  int myC;
  Star(){
    myX = myY = 250;
    myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myA = Math.random()*2*Math.PI;
    myS = Math.random()*10;
  }
  void show(){
    fill (myC);
    ellipse ((float)myX, (float)myY, 5,5);
  }
  void move(){
    myX+=Math.cos(myA)*myS;
    myY+=Math.sin(myA)*myS;
  }
}

class Planet extends Star{
  Planet(){
    myX = myY = 250;
    myC = color(255);
    myA = Math.random()*2*Math.PI;
    myS = Math.random()*10;
  }
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 150, 20);
  }
  void move(){
    myX = Math.random()*500;
    myY = Math.random()*500;
  }
}
