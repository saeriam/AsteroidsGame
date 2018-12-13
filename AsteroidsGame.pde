//your variable declarations here
Spaceship marisa;
Star shiny [] = new Star[100];
public void setup() 
{
  size(600, 600);
  marisa = new Spaceship();
    for (int i = 0; i < shiny.length; i++){
      shiny[i] = new Star();
    }
}
public void draw() 
{
  background(#0D2D5F);
for (int i = 0; i < shiny.length; i++){
  shiny[i].show();
}
  marisa.show();
  marisa.move();
}

 public void keyPressed()
{
  if (key == 'a')
    marisa.turn (-5);
  if (key == 'd')
    marisa.turn (5);
  if (key == 'w')
    marisa.accelerate(2.5);
  if (key == 's')
    marisa.accelerate(-2.5);
  if (key == 'h')
  {
    marisa.setX((int)(Math.random()*500));
    marisa.setY((int)(Math.random()*500));
    marisa.setDirectionX (0);
    marisa.setDirectionY (0);
    marisa.setPointDirection((int)(marisa.getPointDirection()*Math.random()*7)-3);
  }
}
