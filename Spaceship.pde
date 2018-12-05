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
  Spaceship () {
    myCenterX = myCenterY = 300;
    myDirectionX = 2;
    myDirectionY = 3;
    myPointDirection = -5;
    myColor = #D8485B;
    corners = 3; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
  }
 

public void accelerate (double dAmount)
{  
     //Accelerates the ship in
     //the direction it is pointing
     //(myPointDirection)
    
     //convert the current direction the ship is
     //pointing to radians
     double dRadians =myPointDirection*(Math.PI/180);
     
     //change coordinates of direction of travel
     myDirectionX += ((dAmount) * Math.cos(dRadians));
     myDirectionY += ((dAmount) * Math.sin(dRadians));    
}


  }
