//declare bacteria variables here   
Bacteria[] colony = new Bacteria[10];


void setup()   {     
  //initialize bacteria variables here   
  size(1200, 700);
  for (int i = 0; i < colony.length; i++) {
  int myX = (int)(Math.random()*550);
  int myY = (int)(Math.random()*550);
  colony[i] = new Bacteria(myX, myY);
  }
}   


void draw()   {    
  //move and show the bacteria   
  background(173, 216, 230);
  fill(0,255,0);
  rect(0,500,1500,500); //grass
  noStroke();
  fill(255, 220, 0);
  ellipse(mouseX-15,mouseY-15, 30, 30); //petal 1
  ellipse(mouseX+15, mouseY-15, 30, 30); //petal 2
  ellipse(mouseX-15, mouseY+15, 30, 30); //petal 3
  ellipse(mouseX+15, mouseY+15, 30, 30); //petal 4
  fill(100, 60, 20);
  ellipse(mouseX, mouseY, 30, 30); //center
  
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  


class Bacteria    
{     
  //lots of java!   
  int myX, myY; 
  int myColor = color(250, 0, 0); 
  Bacteria(int x, int y) {
    myX = x;
    myY = y;
  }
  
  
  void move() {
    if (mouseX > myX) 
    myX = myX+3; 
    else if 
    (mouseX < myX) myX = myX-3;
    if (mouseY > myY) 
    myY = myY+3; 
    else if 
    (mouseY< myY) myY = myY- 3;
    
  }
  
  void show() {
    fill(myColor);
    ellipse(myX, myY, 60, 60); //body
    fill(0);
    ellipse(myX, myY-30, 40, 35); //head
    ellipse(myX-10, myY+15, 10, 10); //dot 1
    ellipse(myX+10, myY+15, 10, 10); //dot 2
    ellipse(myX-10, myY, 10, 10); //dot 3
    ellipse(myX+10, myY, 10, 10); //dot 4
    rect(myX+5, myY-60, 2, 20); //antenna right
    rect(myX-5, myY-60, 2, 20); //antenna left
  }
}
