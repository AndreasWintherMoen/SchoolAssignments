package stateandbehavior;
public class UpOrDownCounter
{
	private int end, counter;
	private boolean countUp;
	
	public UpOrDownCounter(int start, int end)
	{
		if (start == end) 
		{
			throw new IllegalArgumentException();
		}
		
		countUp = (start < end);
		
		this.counter = start;
		this.end = end;
	}
	
	public int getCounter()
	{
		return counter;
	}
	
	public boolean count()
	{
		if (counter == end)
		{
			return false;
		}
		
		if (countUp)
		{
			counter++;
			return (counter < end);
		}
		else
		{
			counter--;
			return (counter > end);
		}
	}
	
	public static void main(String[] args)
	{
		UpOrDownCounter foo = new UpOrDownCounter(20,10);
		System.out.println(foo.getCounter());
		while (foo.count())
		{
			System.out.println(foo.getCounter());
		}
		System.out.println(foo.getCounter());
	}
}