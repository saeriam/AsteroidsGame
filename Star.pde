class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star (){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show (){
    fill(#AFEDF5);
    noStroke();
    ellipse(myX, myY, 3, 3);
  }
}
