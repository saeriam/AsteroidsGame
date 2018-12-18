class Asteroid extends Floater{
  private double rotationSpeed;
  public void setX(int x){myCenterX = x;} 
  public int getX(){return (int) myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int) myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection =(int) degrees;}                                        
  public double getPointDirection(){return myPointDirection;}
  public float getRadius() {return myRadius;}

  private int myRadius;
  public Asteroid () {
    myColor = #C6D4F0;
    myCenterX = Math.random() * 600;
    myCenterY = Math.random() * 600;
    myDirectionX = 0;
    myDirectionY = 0;
    myRadius = 10;
    myPointDirection = Math.random() * 360;
    rotationSpeed = ((Math.random()*7)-3);
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 5;
    xCorners[1] = 0;
    yCorners[1] = -14;
    xCorners[2] = 9;
    yCorners[2] = -5;
    xCorners[3] = 8;
    yCorners[3] = 8;
    xCorners[4] = -8;
    yCorners[4] = 8;
  }
  public void move (){
    turn((int)rotationSpeed);
        //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;

    //wrap around screen
    if (myCenterX > width + myRadius) {
      myCenterX = -myRadius;
    }
    else if (myCenterX < -myRadius) {
      myCenterX = width + myRadius;    
    }
    if (myCenterY > height + myRadius) {
      myCenterY = -myRadius;
    }
    else if (myCenterY < -myRadius) {
      myCenterY = height + myRadius;
    }
  }
}
