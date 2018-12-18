class Spaceship extends Floater  
{   
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
  public Spaceship () {
    myCenterX = myCenterY = 300;
    myDirectionX = 2;
    myDirectionY = 3;
    myPointDirection = -5;
    myColor = #9D1D0E;
    corners = 20; 
    //int [] xS = {18, 4, 4, 15, 9, 0, 3, -7, 0, };
    //int [] yS = {0, 3, 9, 9, 10, 18, 13, 18, 10, }; 
    //xCorners = xS;
    //yCorners = yS;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 18;
    yCorners[0] = 0;
    xCorners[1] = 4;
    yCorners[1] = 3;
    xCorners[2] = 4;
    yCorners[2] = 9;
    xCorners[3] = 15;
    yCorners[3] = 9;
    xCorners[4] = 9;
    yCorners[4] = 10;
    xCorners[5] = 0;
    yCorners[5] = 18;
    xCorners[6] = 3;
    yCorners[6] = 13;
    xCorners[7] = -7;
    yCorners[7] = 18; 
    xCorners[8] = 0;
    yCorners [8] = 10;
    xCorners[9] = -3;
    yCorners[9] = 4;
    xCorners[10] = -12;
    yCorners[10] = 0;
    xCorners[11] = -3;
    yCorners[11] = -4;
    xCorners[12] = 0;
    yCorners[12] = -10; 
    xCorners[13] = -7;
    yCorners[13] = -18; 
    xCorners[14] = 3; 
    yCorners[14] = -13;
    xCorners[15] = 0; 
    yCorners[15] = -18;
    xCorners[16] = 9;
    yCorners[16] = -10; 
    xCorners[17] = 15;
    yCorners[17] = -9;
    xCorners[18] = 4;
    yCorners[18] = -9;
    xCorners[19] = 4;
    yCorners[19] = -3;
    
  }
  }
