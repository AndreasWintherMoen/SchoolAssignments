package stateandbehavior;
public class Location
{
	private int x;
	private int y;
	
	
	public void up()
	{
		y -= 1;
	}
	
	public void down()
	{
		y += 1;
	}
	
	public void left()
	{
		x -= 1;
	}
	
	
	public void right()
	{
		x += 1;
	}
	
	public int getX()
	{
		return x;
	}
	
	
	public int getY()
	{
		return y;
	}
}