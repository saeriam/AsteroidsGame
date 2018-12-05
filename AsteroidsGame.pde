//your variable declarations here
Spaceship marisa;
Star shiny;
public void setup() 
{
  size(600, 600);
  marisa = new Spaceship();
  background(0);
}
public void draw() 
{
  marisa.show();
  marisa.move();
  //shiny.show();
}

public void keyPressed(){
  if (key == 'w'){
  marisa.accelerate(2.5);
  }else{ 
}
 
 
 
