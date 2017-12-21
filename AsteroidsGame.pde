Spaceship bob;
Stars[] gazin = new Stars[300];
ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean sIsPressed = false;
public void setup() 
{
  size(600,600);
  bob = new Spaceship();
  for(int i = 0; i < gazin.length; i++)
  {
    gazin[i] = new Stars();
  }
  for(int i = 0; i < 10; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < gazin.length; i++)
  {
    gazin[i].show();
  }
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
  }
  bob.move();
  bob.show();
  if(wIsPressed == true)
  {
    bob.accelerate(.1);
  }
  if(aIsPressed == true)
  {
    bob.turn(10);
  }
  if(dIsPressed == true)
  {
    bob.turn(-10);
  }
  if(sIsPressed == true)
  {
    bob.accelerate(-.1);
  }
}
public void keyPressed()
{
  if(key=='h')
  {
    bob.setX((int)(Math.random()*600));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
  if(key=='w')
  {
    wIsPressed = true;
  }
  if(key=='a')
  {
    aIsPressed = true;
  }
  if(key=='d')
  {
    dIsPressed = true;
  }
  if(key=='s')
  {
    sIsPressed = true;
  }
}
public void keyReleased()
{
  if(key=='w')
  {
    wIsPressed = false;
  }
  if(key=='a')
  {
    aIsPressed = false;
  }
  if(key=='d')
  {
    dIsPressed = false;
  }
  if(key=='s')
  {
    sIsPressed = false;
  }
}