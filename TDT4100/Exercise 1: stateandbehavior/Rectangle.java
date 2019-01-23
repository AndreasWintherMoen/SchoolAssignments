package stateandbehavior;
public class Rectangle
{
	private int minX, minY, maxX, maxY;
	private boolean isEmpty;
	
	public Rectangle()
	{
		minX = 0;
		minY = 0;
		maxX = 0;
		maxY = 0;
		
		isEmpty = true;
	}
	
	public Rectangle(int minX, int minY, int maxX, int maxY)
	{
		this.minX = minX;
		this.minY = minY;
		this.maxX = maxX;
		this.maxY = maxY;
		
		isEmpty = false;
	}
	
	public int getMinX()
	{
		if (isEmpty) return 0;
		return minX;
	}
	
	public int getMinY()
	{
		if (isEmpty) return 0;
		return minY;
	}
	
	public int getMaxX()
	{
		if (isEmpty) return 0;
		return maxX;
	}
	
	public int getMaxY()
	{
		if (isEmpty) return 0;
		return maxY;
	}
	
	public int getWidth()
	{
		if (isEmpty) return 0;
		return (maxX - minX + 1);
	}
	
	public int getHeight()
	{
		if (isEmpty) return 0;
		return (maxY - minY + 1);
	}
	
	public boolean isEmpty()
	{
		return isEmpty;
	}
	
	public boolean contains(int x, int y)
	{
		if (isEmpty) return false;
		
		if (x < minX || x > maxX) return false;
		if (y < minY || y > maxY) return false;
		return true;
	}
	
	public boolean contains(Rectangle rect)
	{
		if (isEmpty) return false;
		
		// If top-left and bottom-right points are within this, then it is fully contained. 
		if (contains(rect.getMinX(), rect.getMinY()) == false) return false;
		if (contains(rect.getMaxX(), rect.getMaxY()) == false) return false;
		return true;
	}
	
	public boolean add(int x, int y)
	{
		if (isEmpty)
		{
			minX = x;
			maxX = x;
			minY = y;
			maxY = y;
			
			isEmpty = false;
			
			return true;
		}
		
		if (contains(x, y)) return false;
		
		minX = Math.min(minX,  x);
		minY = Math.min(minY,  y);
		maxX = Math.max(maxX,  x);
		maxY = Math.max(maxY,  y);
		return true;
	}
	
	public boolean add(Rectangle rect) 
	{
		boolean changed = false;
		
		changed = add(rect.getMinX(), rect.getMinY());
		
		// if already changed we shouldn't set it back to false
		changed = (add(rect.getMaxX(), rect.getMaxY()) || changed); 
		
		return changed;
	}
		
	public Rectangle union(Rectangle rect)
	{
		int newMinX = Math.min(minX, rect.getMinX());
		int newMinY = Math.min(minY, rect.getMinY());
		int newMaxX = Math.max(maxX, rect.getMaxX());
		int newMaxY = Math.max(maxY, rect.getMaxY());
		
		return new Rectangle(newMinX, newMinY, newMaxX, newMaxY);
	}
	
	@Override
	public String toString()
	{
		String output = "";
		output += "minX: " + minX + "\t";
		output += "minY: " + minY + "\n";
		output += "maxX: " + maxX + "\t";
		output += "maxY: " + maxY;
		
		return output;
	}
	
	public Rectangle intersection(Rectangle rect)
	{
		// Have to find the highest min values and lowest max values, 
		// and create a new Rectangle from these coordinates. 
		
		// If the rectangles don't overlap at all, we must return an empty Rectangle.
		if (intersects(rect) == false) 
		{
			return new Rectangle();
		}
		
		int newMinX = Math.max(minX,  rect.getMinX());
		int newMinY = Math.max(minY,  rect.getMinY());
		int newMaxX = Math.min(maxX,  rect.getMaxX());
		int newMaxY = Math.min(maxY,  rect.getMaxY());
		
		return new Rectangle(newMinX, newMinY, newMaxX, newMaxY);
	}
	
	public boolean intersects(Rectangle rect)
	{
		if (minX > rect.getMaxX() || maxX < rect.getMinX()) return false;
		if (minY > rect.getMaxY() || maxY < rect.getMinY()) return false;
		return true;
	}
	
	public static void main(String[] args)
	{
		Rectangle rect1 = new Rectangle(5, 5, 10, 10);
		Rectangle rect2 = new Rectangle(8, 8, 20, 20);
		System.out.println(rect1.intersection(rect2).toString());
	}
}