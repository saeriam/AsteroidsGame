//your variable declarations here
Spaceship marisa;
ArrayList <Asteroid> ashteroid;
int numAshteroid = (int) (Math.random()*10);
Star shiny [] = new Star[100];
public void setup() 
{
  size(600, 600);
  marisa = new Spaceship();
    for (int i = 0; i < shiny.length; i++){
      shiny[i] = new Star();
    }
    ashteroid = new ArrayList<Asteroid>();
  for (int i = 0; i < numAshteroid; i++) {
    ashteroid.add(new Asteroid());
    ashteroid.get(i).accelerate(Math.random() * 0.3);    
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
   for (int a = 0; a < ashteroid.size(); a++) {
    ashteroid.get(a).show();
    ashteroid.get(a).turn(1);
    ashteroid.get(a).move();
   }
}

 public void keyPressed()
{
  if (key == 'a')
    marisa.turn (-7);
  if (key == 'd')
    marisa.turn (7);
  if (key == 'w')
    marisa.accelerate(2.5);
  if (key == 's')
    marisa.accelerate(-2.5);
  if (key == 'c')
  {
    marisa.setX((int)(Math.random()*500));
    marisa.setY((int)(Math.random()*500));
    marisa.setDirectionX (0);
    marisa.setDirectionY (0);
    marisa.setPointDirection((int)(marisa.getPointDirection()*Math.random()*7)-3);
  }
}
