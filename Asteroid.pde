class Asteroid extends Floater
{
  protected int rotSpeed;
  public Asteroid()
  {
    myColor = color(255,0,0);
    rotSpeed = (int)(Math.random()*10);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -11;
    yCorners[0]= -10;
    xCorners[1]= -13;
    yCorners[1]= 2;
    xCorners[2]= -7;
    yCorners[2]= 8;
    xCorners[3]= 4;
    yCorners[3]= 15;
    xCorners[4]= 5;
    yCorners[4] = 0;
    xCorners[5] = 7;
    yCorners[5] = -6;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (int)(Math.random()*21)-10;
    myDirectionY = (int)(Math.random()*21)-10;
    myPointDirection = 0;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void setX(int x){myCenterX =x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y){myCenterY=y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x) {myDirectionX=x;};   
  public double getDirectionX() {return myDirectionX;};   
  public void setDirectionY(double y){myDirectionY=y;};   
  public double getDirectionY(){return myDirectionY;};   
  public void setPointDirection(int degrees){myPointDirection = degrees;};   
  public double getPointDirection(){return myPointDirection;}; 
  
}
    