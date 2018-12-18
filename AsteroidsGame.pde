//your variable declarations here
Spaceship marisa;
ArrayList <Asteroid> ashteroid;
int numAshteroid = (int) ((Math.random()*10)+5);
ArrayList<Bullet> bullets;
Bullet bullet;
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
    ashteroid.get(i).accelerate(Math.random() * 0.8);    
  }
  bullets = new ArrayList<Bullet>();
  bullet = new Bullet (marisa);
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
   if (bullets != null) {
    for (int i = bullets.size() - 1; i >= 0; i--) {
      bullets.get(i).show();
      bullets.get(i).move();
      if (bullets.get(i).getX() >= width + bullets.get(i).getRadius() || bullets.get(i).getX() <= 0 - bullets.get(i).getRadius() || bullets.get(i).getY() >= height + bullets.get(i).getRadius() || bullets.get(i).getY() <= 0 - bullets.get(i).getRadius()) {
        bullets.remove(bullets.get(i));
      }
    }
   for (int i = bullets.size() - 1; i >= 0; i--) {
    for (int j = ashteroid.size() - 1; j >= 0; j--) {
      if (bullets != null && ashteroid != null) {
        if (dist(bullets.get(i).getX(), bullets.get(i).getY(), ashteroid.get(j).getX(), ashteroid.get(j).getY()) <= (bullets.get(i).getRadius() + ashteroid.get(j).getRadius())) {
          bullets.remove(bullets.get(i));
          ashteroid.remove(ashteroid.get(j));
          break;
        }
      }
    }
   }
   }
}

public void keyPressed()
{
  if (key == 'a')
    marisa.turn (-7);
  if (key == 'd')
    marisa.turn (7);
  if (key == 'w')
    marisa.accelerate(1.5);
  if (key == 's')
    marisa.accelerate(-1.5);
  if (key == 'c')
  {
    marisa.setX((int)(Math.random()*500));
    marisa.setY((int)(Math.random()*500));
    marisa.setDirectionX (0);
    marisa.setDirectionY (0);
    marisa.setPointDirection((int)(marisa.getPointDirection()*Math.random()*7)-3);
  }
  if (key == ' ') {
      // shoot
      Bullet b = new Bullet(marisa);
      bullets.add(b);
    }
}
