package stateandbehavior;
public class Digit
{
	private int numBase;
	private int number;
	
	public Digit(int numBase)
	{
		this.numBase = numBase;
		number = 0;
	}
	
	public int getValue()
	{
		return number;
	}
	
	public boolean increment()
	{
		number += 1;
		if (number == numBase) {
			number = 0;
			return true;
		}
		return false;
	}
	
	public int getBase()
	{
		return numBase;
	}
	
	public String toString()
	{
		if (number < 10)
		{
			return Integer.toString(number);
		}
		char letter = (char) ('A' + (number - 10));
		return String.valueOf(letter);
	}
}