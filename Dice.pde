Dice bob;
void setup()
{
  size(500, 300);
  noLoop();
  
}
void draw(){
background(255, 250, 186);

    int total= 0;
  for (int y = 70; y <= 300; y += 80) { 
  for(int x = 50; x < 500; x += 100){
     bob = new Dice(x, y);
     bob.roll();
     bob.show();

     total+= bob.num;
    }
  }
  fill (8);
  textSize (24);
  textAlign(LEFT,TOP);
  text("Total roll : " + total, 10, 10);
}
void mousePressed()
{
  redraw();
}
class Dice
{
  //three member variables
  int num; 
  int myX, myY;

  //three member functions
  Dice(int x, int y) //constructor
  {
    //initialize member variables
    num= 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  { 
    fill (255);
      rectMode(CENTER);
      rect (myX, myY, 50,50,10);
    
     fill(0);
     float side = 12;
     
    if (num % 2 == 0) {
    fill(100, 200, 255); // light blue for even
  } else {
    fill(255, 150, 150); // light red/pink for odd
  } 
    if (num == 1) {
    ellipse(myX, myY, 8, 8);
  } 
  else if (num == 2) {
    ellipse(myX - side, myY - side, 8, 8);
    ellipse(myX + side, myY + side, 8, 8);
  } 
  else if (num == 3) {
    ellipse(myX, myY, 8, 8);
    ellipse(myX - side, myY - side, 8, 8);
    ellipse(myX + side, myY + side, 8, 8);
  } 
  else if (num == 4) {
    ellipse(myX - side, myY - side, 8, 8);
    ellipse(myX + side, myY - side, 8, 8);
    ellipse(myX - side, myY + side, 8, 8);
    ellipse(myX + side, myY + side, 8, 8);
  } 
  else if (num == 5) {
    ellipse(myX, myY, 8, 8);
    ellipse(myX - side, myY - side, 8, 8);
    ellipse(myX + side, myY - side, 8, 8);
    ellipse(myX - side, myY + side, 8, 8);
    ellipse(myX + side, myY + side, 8, 8);
  } 
  else { // num == 6
    ellipse(myX - side, myY - side, 8, 8);
    ellipse(myX + side, myY - side, 8, 8);
    ellipse(myX - side, myY, 8, 8);
    ellipse(myX + side, myY, 8, 8);
    ellipse(myX - side, myY + side, 8, 8);
    ellipse(myX + side, myY + side, 8, 8);
  }
}

}
