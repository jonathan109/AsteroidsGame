class Stars 
{
  private int myX, myY;
  public Stars()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show()
  {
    fill(255);
    ellipse(myX,myY,3,3);
  }

}