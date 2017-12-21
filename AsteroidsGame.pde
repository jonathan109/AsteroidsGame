Spaceship bob;
Stars[] gazin = new Stars[300];
ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean sIsPressed = false;
boolean bIsPressed = false;
boolean bWeapon = true;
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
  for(int i = 0; i<rocks.size();i++)
   {
    for(int j=0; j<bullets.size();j++)
     {
      if(dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)bullets.get(j).getX(),(float)bullets.get(j).getY())<35)
      {
        rocks.remove(i);
        bullets.remove(j);
        rocks.add(new Asteroid());
      }
     }
    }
 for(int i =0; i<bullets.size();i++)
    {
      bullets.get(i).show();
      bullets.get(i).move();
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
  if(bWeapon == true)
      {
        bullets.add(new Bullet(bob));
        bIsPressed = true;        
      }
  if(key=='b')
  {
    bIsPressed = true;
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