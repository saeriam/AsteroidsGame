class Spaceship extends Floater  
{   
  public void setX(int x);  
  public int getX();   
  public void setY(int y);   
  public int getY();   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection =(int) degrees;}                                        
  public double getPointDirection(){return myPointDirection;} 
}
