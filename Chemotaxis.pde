
Bacteria [] bobs = new Bacteria[50];
void setup() {
  size (500, 500);
  background(0);

  for (int i = 0; i <bobs.length; i++) {
    bobs[i] = new Bacteria();
  }
}
class Bacteria {
  int myX, myY;
  color myC;
  
  Bacteria () {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  void show () {
    fill(myC);
    ellipse(myX, myY, 20, 20);
    if (mouseX > myX)
      myX += (int)(Math.random()*5)-1;
    else
      myX = (int)(Math.random()*5)-3;
    if (mouseY > myY)
      myY += (int)(Math.random()*5)-1;
    else
      myY += (int)(Math.random()*5)-3;
  



}

void walk() {
  myX = myX + (int)(Math.random()*3)-1;
  myY = myY + (int)(Math.random()*3)-1;
}
}
void draw() {
  background(0);

  for (int i = 0; i < bobs.length; i++) {  
    bobs[i].walk();
    bobs[i].show();
  }
}
