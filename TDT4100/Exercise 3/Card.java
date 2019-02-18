package encapsulation;
public class Card
{
	private char suit;
	private int value;
	
	public Card(char suit, int value)
	{
		if (isValidCard(suit, value) == false) 
		{
			throw new IllegalArgumentException();
		}
		else
		{
			this.suit = suit;
			this.value = value;			
		}
	}
	
	public char getSuit()
	{
		return suit;
	}
	
	public int getFace()
	{
		return value;
	}
	
	@Override
	public String toString()
	{
		return (Character.toString(suit) + Integer.toString(value));
	}
	
	private boolean isValidCard(char suit, int value)
	{
		if (value < 1 || value > 13) return false;
		if (suit != 'S' && suit != 'H' && suit != 'D' && suit != 'C') return false;
		return true;
	}
}